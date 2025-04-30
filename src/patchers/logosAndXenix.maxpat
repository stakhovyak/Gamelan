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
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"id" : "obj-40",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 857.0, -13.0, 11.0, 848.0 ],
					"proportion" : 0.5,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -7.0, -13.0, 11.0, 848.0 ],
					"proportion" : 0.5,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"id" : "obj-38",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ -1.333320647478104, -13.0, 866.0, 18.0 ],
					"proportion" : 0.5,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 0.725490196078431, 0.003921568627451, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 807.0, 866.0, 18.0 ],
					"proportion" : 0.5,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_display_handle_one"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 311.0, 1130.0, 39.0, 22.0 ],
					"text" : "zl.join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 419.0, 1075.0, 291.0, 22.0 ],
					"text" : "15 \"20\" \"120\" 1/8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 955.0, 566.0, 173.0, 22.0 ],
					"text" : "readfile ../frontend/symbol.html"
				}

			}
, 			{
				"box" : 				{
					"disablefind" : 0,
					"id" : "obj-3",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 382.0, 314.0, 424.0, 570.0 ],
					"rendermode" : 0,
					"url" : "file:///C:/Users/Weuoimi/Documents/Max%209/Projects/Gamelan/src/frontend/symbol.html"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Comic Sans MS",
					"fontsize" : 23.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 6.0, 509.0, 39.0 ],
					"text" : "press + button to add tables and draw babe",
					"textcolor" : [ 0.462745098039216, 0.462745098039216, 0.462745098039216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.0,
					"id" : "obj-26",
					"linecount" : 19,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 955.0, 6.0, 298.0, 443.0 ],
					"text" : "So far it's phinicky as fuck.\n\nTODOs:\n\n1) make logos tables deletion the actual deletion not only visual, make the tables interchange each other, for example if among 3 tables the second one is deleted, the 3rd one becomes 2nd one.\n\n2) add setters for each xenix parameter, you won't control the logos/xenix by hand right?\n\n3) investigate ways to output polyphpnic midi notes with adsr, taken from the quantizer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 492.0, 958.0, 150.0, 20.0 ],
					"text" : "TODO, for midi data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 353.0, -36.0, 150.0, 20.0 ],
					"text" : "bang"
				}

			}
, 			{
				"box" : 				{
					"comment" : "TODO for bang and set messages",
					"id" : "obj-14",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.0, -37.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "for polyphonic midi data",
					"id" : "obj-11",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.0, 1332.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 1194.0, 73.0, 22.0 ],
					"text" : "script status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 1170.0, 117.0, 22.0 ],
					"text" : "script processStatus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 1146.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 1122.0, 114.0, 22.0 ],
					"text" : "script npm --version"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ -396.0, 330.0, 46.0, 22.0 ],
					"text" : "refresh"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 182.0, 1194.0, 380.0, 22.0 ],
					"text" : "flood 1 2 0.332447 15 \"20\" \"120\" 1/8"
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
					"patching_rect" : [ -119.0, 334.0, 104.0, 104.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.0, 1075.0, 329.0, 22.0 ],
					"text" : "flood 1 2 0.332447"
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
					"patching_rect" : [ 6.0, 285.333341598510742, 851.333358705043793, 526.0 ],
					"rendermode" : 0,
					"url" : "file:///C:/Users/Weuoimi/Documents/Max%209/Projects/Gamelan/src/frontend/xenis.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ -396.0, 364.0, 163.0, 22.0 ],
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
											"y" : 3
										}
,
										"start" : 										{
											"x" : 4,
											"y" : 0
										}

									}
, 									{
										"end" : 										{
											"x" : 0,
											"y" : 0
										}
,
										"start" : 										{
											"x" : 4,
											"y" : 3
										}

									}
, 									{
										"end" : 										{
											"x" : 2,
											"y" : 4
										}
,
										"start" : 										{
											"x" : 0,
											"y" : 0
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 4
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
											"x" : 0,
											"y" : 1
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 0
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 1
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 0
										}

									}
, 									{
										"end" : 										{
											"x" : 2,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 4,
											"y" : 1
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
											"y" : 1
										}

									}
, 									{
										"end" : 										{
											"x" : 1,
											"y" : 2
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 3
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
											"y" : 3
										}

									}
, 									{
										"end" : 										{
											"x" : 1,
											"y" : 4
										}
,
										"start" : 										{
											"x" : 2,
											"y" : 3
										}

									}
, 									{
										"end" : 										{
											"x" : 4,
											"y" : 3
										}
,
										"start" : 										{
											"x" : 3,
											"y" : 4
										}

									}
 ],
								"id" : 2,
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
					"patching_rect" : [ -214.0, 360.0, 137.0, 22.0 ],
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
					"patching_rect" : [ -214.0, 329.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 6.0, 1228.0, 223.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 1,
						"defer" : 0,
						"watch" : 0
					}
,
					"text" : "node.script ../../dist/main.js @autostart 1",
					"textfile" : 					{
						"filename" : "main.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 6.0, -72.0, 58.0, 22.0 ],
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
					"patching_rect" : [ 6.0, -37.0, 163.0, 22.0 ],
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
					"patching_rect" : [ 6.0, 6.0, 851.333358705043793, 277.333341598510742 ],
					"rendermode" : 0,
					"url" : "file:///C:/Users/Weuoimi/Documents/Max%209/Projects/Gamelan/src/frontend/logos.html"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.57636836783545, 0.576368229540612, 0.576368265679262, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2.0, 0.0, 866.0, 835.0 ],
					"proportion" : 0.5,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_control_fg_off_zombie"
						}

					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 15.5, 287.111121356487274, -70.0, 287.111121356487274, -70.0, 383.0, -204.5, 383.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 15.5, 291.666670799255371, -386.5, 291.666670799255371 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-24", 0 ]
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-31", 0 ]
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
					"midpoints" : [ -386.5, 396.0, -112.833320647478104, 396.0, -112.833320647478104, 290.0, 15.5, 290.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 15.5, 929.5, 390.5, 929.5 ],
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
		"originid" : "pat-22",
		"dependency_cache" : [ 			{
				"name" : "main.js",
				"bootpath" : "~/Documents/Max 9/Projects/Gamelan/dist",
				"patcherrelativepath" : "../../dist",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
