import maxAPI from 'max-api'

type NoteParams = {
    pitch: { octave: number; note: string }
    A: number
    D: number
    R: number
    S: number
}

type Matrix = {
    edges: Array<{
        start: { x: number; y: number }
        end: { x: number; y: number }
    }>
    id: number
    size: { cols: number | null; rows: number | null }
}

type ActiveNote = NoteParams & {
    cellIndex: number
    startTime: number
}

type BeatDuration =
    | '6/1'
    | '3/1'
    | '1/6'
    | '1/3'
    | '16/1'
    | '8/1'
    | '4/1'
    | '2/1'
    | '1/1'
    | '1/2'
    | '1/4'
    | '1/8'
    | '1/16'

class MatrixFlooder {
    private quantizerDictId: string
    private matricesDictId: string
    private transportBPM = 120
    private activeNotes: ActiveNote[] = []

    private beatDurationMap = new Map<string, number>([
        ['8/1', 8.0],
        ['16/1', 16.0],
        ['4/1', 4.0],
        ['2/1', 2.0],
        ['1/1', 1.0],
        ['1/2', 0.5],
        ['1/4', 0.25],
        ['1/8', 0.125],
        ['1/16', 0.0625],
        ['1/3', 0.333],
        ['1/6', 0.1666],
        ['3/1', 3.0],
        ['6/1', 6.0],
    ])

    constructor(quantizerDictId: string, matricesDictId: string) {
        this.quantizerDictId = quantizerDictId
        this.matricesDictId = matricesDictId

        maxAPI.addHandler(
            'flood',
            (
                matrixAId: number,
                matrixBId: number,
                coeff: number,
                startNode: number,
                power: number,
                bpm: number,
                beatDuration: BeatDuration,
            ) =>
                this.handleFlood(
                    matrixAId,
                    matrixBId,
                    coeff,
                    startNode,
                    power,
                    bpm,
                    beatDuration,
                ),
        )
        maxAPI.addHandler('setBPM', this.handleBPM)
    }

    private handleBPM = (bpm: number) => {
        this.transportBPM = bpm
    }

    private handleFlood = async (
        matrixAId: number,
        matrixBId: number,
        coeff: number,
        startNode: number,
        power: number,
        bpm: number,
        beatDuration: BeatDuration,
    ) => {
        const matrixA = await this.getMatrix(matrixAId)
        const matrixB = (await this.getMatrix(matrixBId)) || matrixA
        //  maxAPI.post(JSON.stringify(matrixA), JSON.stringify(matrixB))
        const graph = this.createInterpolatedGraph(matrixA, matrixB, coeff)
        await this.traverse(graph, startNode, power, bpm, beatDuration)
    }

    private async getMatrix(id: number): Promise<Matrix> {
        const dict = await maxAPI.getDict(this.matricesDictId)

        const matrices = dict.matrices as Record<string, Matrix> | undefined

        const matrixId = id.toString()

        const matrix = matrices![matrixId]

        return matrix
    }

    private createInterpolatedGraph(
        matrixA: Matrix,
        matrixB: Matrix,
        coeff: number,
    ): number[][] {
        const graph: number[][] = Array(25)
            .fill(0)
            .map(() => Array(25).fill(0))

        /* const validateMatrix = (matrix: Matrix, name: string) => {
            if (!matrix) throw new Error(`${name} matrix is undefined`);
            if (!Array.isArray(matrix.edges)) {
                throw new Error(`${name} matrix edges is not an array`);
            }
        };

        validateMatrix(matrixA, 'Matrix A');
        validateMatrix(matrixB, 'Matrix B'); */

        const addEdges = (matrix: Matrix, weight: number) => {
            try {
                for (const edge of matrix.edges) {
                    if (!edge.start || !edge.end) {
                        throw new Error(
                            `Invalid edge structure in matrix ${matrix.id}`,
                        )
                    }

                    const safeCoord = (coord: any, name: string) => {
                        const num = Number(coord)
                        if (isNaN(num))
                            throw new Error(
                                `Invalid ${name} coordinate: ${coord}`,
                            )
                        return num
                    }

                    const startX = safeCoord(edge.start.x, 'start.x')
                    const startY = safeCoord(edge.start.y, 'start.y')
                    const endX = safeCoord(edge.end.x, 'end.x')
                    const endY = safeCoord(edge.end.y, 'end.y')

                    const from = this.xyToIndex(startX, startY)
                    const to = this.xyToIndex(endX, endY)
                    const distance = Math.hypot(endX - startX, endY - startY)

                    graph[from][to] += distance * weight
                }
            } catch (error) {
                maxAPI.post(`Error processing matrix ${matrix.id}: ${error}`)
                throw error
            }
        }

        try {
            addEdges(matrixA, 1 - coeff)
            addEdges(matrixB, coeff)
        } catch (error) {
            maxAPI.post(`Graph creation failed: ${error}`)
            return graph // Return partial graph or empty array
        }

        return graph
    }

    private xyToIndex(x: number, y: number): number {
        return y * 5 + x
    }

    private indexToXY(index: number): { x: number; y: number } {
        return {
            x: index % 5,
            y: Math.floor(index / 5),
        }
    }

    private async traverse(
        graph: number[][],
        start: number,
        power: number,
        bpm: number,
        beatDuration: BeatDuration,
    ) {
        if (power <= 0) {
            maxAPI.post(`Power exhausted at ${start}`)
            return
        }

        const connections = this.getConnections(graph, start)
        if (connections.length === 0) {
            maxAPI.post(`Dead end at ${start}`)
            return
        }

        const powerPerConnection = Math.floor(power / connections.length)

        await Promise.all(
            connections.map(async ({ to, distance }) => {
                await this.travel(start, to, distance, bpm, beatDuration)
                await this.traverse(
                    graph,
                    to,
                    powerPerConnection - 1,
                    bpm,
                    beatDuration,
                )
            }),
        )
    }

    private getConnections(graph: number[][], vertex: number) {
        return graph[vertex]
            .map((distance, to) => (distance > 0 ? { to, distance } : null))
            .filter(Boolean) as Array<{ to: number; distance: number }>
    }

    private async travel(
        from: number,
        to: number,
        distance: number,
        bpm: number,
        beatDuration: BeatDuration,
    ) {
        try {
            const quantizer = await maxAPI.getDict(this.quantizerDictId)
            const notes = quantizer[from.toString()] || ([] as NoteParams[])

            const newNotes: ActiveNote[] = (notes as NoteParams[]).map(
                (note) => ({
                    ...note,
                    cellIndex: from,
                    startTime: Date.now(),
                }),
            )

            this.activeNotes.push(...newNotes)
            this.outputActiveNotes()

            const beatTime = (60 / Math.max(bpm, 1)) * 1000

            const bd = this.beatDurationMap.get(beatDuration) || 1

            const duration = distance * bd * beatTime

            // maxAPI.post(bd)

            await new Promise((resolve) => setTimeout(resolve, duration))

            this.activeNotes = this.activeNotes.filter(
                (n) => !newNotes.includes(n),
            )
            this.outputActiveNotes()
        } catch (error) {
            maxAPI.post(`Error in travel: ${error}`)
        }
    }

    private outputActiveNotes() {
        const output = this.activeNotes.map((note) => ({
            cell: note.cellIndex,
            pitch: `${note.pitch.note}${note.pitch.octave}`,
            adsr: [note.A, note.D, note.S, note.R],
        }))

        maxAPI.post(JSON.stringify(output))
        // maxAPI.outlet("activeNotes", output);
    }
}

const main = () => {
    const flooder = new MatrixFlooder('quant', 'MatrDict')
}

main()
