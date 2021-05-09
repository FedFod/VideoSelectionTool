{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 826.0, 37.0, 1576.0, 929.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Template_Grid",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.72793036699295, 350.277299761772156, 196.0, 50.0 ],
					"text" : "\"C:/Program Files/Cycling '74/Max 8/resources/media/jitter/track2.mov\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 308.47368335723877, 45.789926290512085, 210.0, 22.0 ],
					"text" : "jit.anim.drive @ui_listen 1 @speed 10"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 108.745752990245819, 117.219514846801758, 80.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 308.47368335723877, 75.970096111297607, 314.0, 22.0 ],
					"text" : "jit.gl.camera my-ctx @lookat 0 0 0 @locklook 1 @tripod 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 601.264872312545776, 419.618421971797943, 41.0, 20.0 ],
					"text" : "bangs"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.0,
					"id" : "obj-30",
					"justification" : 3,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 536.73855996131897, 404.500000476837158, 139.210525035858154, 78.026315093040466 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 544.028030753135681, 342.55361670255661, 56.0, 20.0 ],
					"text" : "listens to"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 1,
					"border" : 2.0,
					"id" : "obj-28",
					"justification" : 1,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.449086308479309, 326.566774368286133, 34.605262875556946, 51.973684668540955 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 498.014875471591949, 296.73881995677948, 76.0, 29.0 ],
					"text" : "jit.world",
					"textcolor" : [ 0.988235294117647, 0.996078431372549, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.32156862745098, 0.32156862745098, 0.32156862745098, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 478.159612417221069, 380.29145073890686, 123.0, 29.0 ],
					"text" : "JitterListener",
					"textcolor" : [ 0.988235294117647, 0.996078431372549, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.815686274509804, 0.815686274509804, 1.0 ],
					"fontsize" : 15.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.159613847732544, 441.052631616592407, 69.0, 24.0 ],
					"text" : "Main File",
					"textcolor" : [ 0.0, 0.243137254901961, 0.815686274509804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.764875531196594, 512.184210181236267, 54.0, 20.0 ],
					"text" : "draws to"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.0,
					"id" : "obj-23",
					"justification" : 4,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 283.223879218101501, 507.578947067260742, 52.368420600891113, 51.315789937973022 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.815686274509804, 0.815686274509804, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.223879218101501, 535.407894551753998, 204.0, 29.0 ],
					"text" : "jit.gl.camera @ortho 2",
					"textcolor" : [ 0.0, 0.243137254901961, 0.815686274509804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 509.159610033035278, 518.302631556987762, 54.0, 20.0 ],
					"text" : "draws to"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 1,
					"border" : 2.0,
					"id" : "obj-20",
					"justification" : 3,
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 433.1859290599823, 502.381579220294952, 205.657892823219299, 94.47368335723877 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.301960784313725, 0.301960784313725, 1.0 ],
					"fontsize" : 15.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 695.185925841331482, 423.277299761772156, 144.0, 24.0 ],
					"text" : "VideoPlayer CLASS",
					"textcolor" : [ 0.858823529411765, 1.0, 0.956862745098039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 703.238555550575256, 535.407894551753998, 65.0, 20.0 ],
					"text" : "texture out"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.0,
					"id" : "obj-18",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.422768712043762, 512.184210181236267, 9.605263113975525, 66.447368741035461 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.301960784313725, 0.301960784313725, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 660.396452784538269, 478.540457129478455, 82.0, 29.0 ],
					"text" : "jit.movie",
					"textcolor" : [ 0.858823529411765, 1.0, 0.956862745098039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.301960784313725, 0.301960784313725, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 643.291189789772034, 580.712501525878906, 135.0, 29.0 ],
					"text" : "jit.gl.videplane",
					"textcolor" : [ 0.858823529411765, 1.0, 0.956862745098039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 392.712242722511292, 545.934210240840912, 65.0, 20.0 ],
					"text" : "texture out"
				}

			}
, 			{
				"box" : 				{
					"arrows" : 2,
					"border" : 2.0,
					"id" : "obj-12",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.896455883979797, 522.710525870323181, 9.605263113975525, 66.447368741035461 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.815686274509804, 0.815686274509804, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.159613847732544, 591.157894611358643, 135.0, 29.0 ],
					"text" : "jit.gl.videplane",
					"textcolor" : [ 0.0, 0.243137254901961, 0.815686274509804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.815686274509804, 0.815686274509804, 0.815686274509804, 1.0 ],
					"fontsize" : 20.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.396455883979797, 491.710525870323181, 94.0, 29.0 ],
					"text" : "jit.gl.node",
					"textcolor" : [ 0.0, 0.243137254901961, 0.815686274509804, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.159613847732544, 246.400944471359253, 326.0, 22.0 ],
					"text" : "\"C:/Program Files/Cycling '74/Max 8/resources/media/jitter/\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 378.159613847732544, 178.913827180862427, 107.371860980987549, 46.020100593566895 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.159613847732544, 279.566774368286133, 113.0, 22.0 ],
					"text" : "prepend loadFolder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.159613847732544, 308.712503671646118, 84.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "videoWall.js",
						"parameter_enable" : 0
					}
,
					"text" : "js videoWall.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.245752990245819, 45.789926290512085, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 18.245752990245819, 81.56379234790802, 262.0, 22.0 ],
					"text" : "jit.world my-ctx @fsaa 1 @floating 1 @enable 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "drawto",
					"id" : "obj-32",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.159613847732544, 278.712504000000024, 161.219512462615967, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "videoWall.js",
				"bootpath" : "~/Desktop/VideoWall_Share/VideoSelectionTool",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
