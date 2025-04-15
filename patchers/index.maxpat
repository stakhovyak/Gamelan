{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1514.0, 921.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Comic Sans MS",
					"fontsize" : 20.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.416660323739052, 571.0, 235.0, 34.0 ],
					"text" : "XENIS",
					"textcolor" : [ 0.858823529411765, 0.980392156862745, 0.427450980392157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Comic Sans MS",
					"fontsize" : 20.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 114.0, 235.0, 34.0 ],
					"text" : "LOGOS",
					"textcolor" : [ 0.941176470588235, 1.0, 0.596078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 845.0, 22.0, 150.0, 144.0 ],
					"text" : "TODO:\n- add a delete grid functionality,\n- clear all button to the grid.\n- when you delete grid it deleted also from the dict,\n(when you delete #2 in [#1 #2 #3], the #3 becomes #2 automatically"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 430.0, 46.0, 22.0 ],
					"text" : "refresh"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 536.0, 675.0, 150.0, 103.0 ],
					"text" : "a parameter for script. it lacks of mode and speed for now\n\nTODO: how to convert the global transport's 1/8, 1/16 etc to seconds?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.0, 675.0, 171.0, 22.0 ],
					"presentation_linecount" : 3,
					"text" : "\"transpose 1 2 0.71\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 351.0, 505.0, 41.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.0, 592.0, 329.0, 22.0 ],
					"text" : "\"transpose 1 2 0.05\""
				}

			}
, 			{
				"box" : 				{
					"disablefind" : 0,
					"id" : "obj-7",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 505.0, 847.833320647478104, 64.0 ],
					"rendermode" : 0,
					"url" : "file:///C:/Users/Weuoimi/Documents/Max%209/Projects/Gamelan/frontend/xenis.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 464.0, 163.0, 22.0 ],
					"text" : "readfile ../frontend/xenis.html"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"matrices" : 						{
							"1" : 							{
								"edges" : [ 									{
										"end" : 										{
											"x" : 3,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 3,
											"y" : 1
										}

									}
, 									{
										"end" : 										{
											"x" : 1,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 1
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 4
										}
,
										"start" : 										{
											"x" : 1,
											"y" : 1
										}

									}
 ],
								"id" : 1,
								"size" : 								{
									"cols" : null,
									"rows" : null
								}

							}
,
							"2" : 							{
								"edges" : [ 									{
										"end" : 										{
											"x" : 4,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 0
										}

									}
, 									{
										"end" : 										{
											"x" : 2,
											"y" : 2
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 3
										}

									}
, 									{
										"end" : 										{
											"x" : 2,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 0
										}

									}
 ],
								"id" : 2,
								"size" : 								{
									"cols" : null,
									"rows" : null
								}

							}
,
							"3" : 							{
								"edges" : [ 									{
										"end" : 										{
											"x" : 4,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 3
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 4
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 2
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 1,
											"y" : 4
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 4
										}

									}
 ],
								"id" : 3,
								"size" : 								{
									"cols" : null,
									"rows" : null
								}

							}

						}

					}
,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 6.0, 97.0, 137.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict MatrDict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 6.0, 66.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 127.0, 331.0, 890.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 98.0, 176.00000524520874, 20.0 ],
					"text" : "For storing JSON of matrices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 976.0, 150.0, 20.0 ],
					"text" : "For scripting"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 489.0, 975.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
						"watch" : 0
					}
,
					"text" : "node.script",
					"textfile" : 					{
						"text" : "",
						"flags" : 2,
						"embed" : 1,
						"autowatch" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 640.0, 22.0, 190.000005662441254, 103.0 ],
					"text" : "TODO:\n- add a dictionary which stores\n  the JSON of the matrices\n- add a node4max for scripting the     matrices, generate events with sparrow-lib Pipes on fetched in          CSR format "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 400.0, 51.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 86.0, 163.0, 22.0 ],
					"text" : "readfile ../frontend/logos.html"
				}

			}
, 			{
				"box" : 				{
					"disablefind" : 0,
					"id" : "obj-1",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 138.0, 851.333358705043793, 277.333341598510742 ],
					"rendermode" : 0,
					"url" : "file:///C:/Users/Weuoimi/Documents/Max%209/Projects/Gamelan/other/logos.html"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 409.5, 425.111121356487274, 358.0, 425.111121356487274, 358.0, 51.0, 15.5, 51.0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"midpoints" : [ 360.5, 644.5, 512.5, 644.5 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 409.5, 580.5, 670.5, 580.5 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-8",
		"dependency_cache" : [ 			{
				"name" : "u791000292.js",
				"bootpath" : "~/AppData/Roaming/Cycling '74/Max 9/Settings/temp64-Max",
				"patcherrelativepath" : "../../../../../AppData/Roaming/Cycling '74/Max 9/Settings/temp64-Max",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
