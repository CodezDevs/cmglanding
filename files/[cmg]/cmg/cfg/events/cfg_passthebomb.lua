local cfg = {}

cfg.minPlayers = 4

cfg.vehicleCategories = {
    ["Main"] = {
        ["Dominator"] = {
            model = `dominator7`,
            level = 10
        },
        ["Toros"] = {
            model = `toros`,
            level = 50
        },
        ["Tailgater"] = {
            model = `tailgater2`,
            level = 40
        },
        ["Coquette"] = {
            model = `coquette4`,
            level = 60
        },
        ["Vstr"] = {
            model = `vstr`,
            level = 20
        },
        ["Jester"] = {
            model = `jester4`,
            level = 5
        },
        ["Comet"] = {
            model = `comet6`,
            level = 0
        },
        ["Growler"] = {
            model = `growler`,
            level = 0
        },
        ["Tigon"] = {
            model = `tigon`,
            level = 70
        },
        ["Komoda"] = {
            model = `Komoda`,
            level = 30
        }
    }
}

cfg.locations = {
    ["Pass The Bomb: Cyclone"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/K3l1t8v63EKhym0s-DnpoQ.json")),
        spawnpoints = {
            vector4(-1351.89, -3114.97, 31.14, 349.76),
            vector4(-1368.11, -3107.65, 31.14, 332.4),
            vector4(-1396.78, -3082.8, 31.14, 305.64),
            vector4(-1405.8, -3060.12, 31.15, 273.82),
            vector4(-1405.69, -3028.96, 31.15, 257.07),
            vector4(-1396.74, -3006.81, 31.15, 230.12),
            vector4(-1369.78, -2981.78, 31.14, 200.88),
            vector4(-1353.25, -2975.82, 31.13, 189.86),
            vector4(-1321.16, -2975.9, 31.12, 162.33),
            vector4(-1309.72, -2978.89, 31.12, 156.92),
            vector4(-1379.89, -3001.49, 31.11, 124.29),
            vector4(-1268.69, -3022.63, 31.11, 102.41),
            vector4(-1267.23, -3060.62, 31.14, 74.48),
            vector4(-1273.21, -3076.94, 31.15, 59.29),
            vector4(-1301.73, -3106.49, 31.12, 21.79),
            vector4(-1318.99, -3113.72, 31.15, 16.19)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1406.18, -3044.24, 70.37), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1338.0, -2974.02, 70.19), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1266.0, -3042.55, 70.34), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1336.78, -3115.19, 70.22), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1406.18, -3044.24, 70.37), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1338.0, -2974.02, 70.19), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1266.0, -3042.55, 70.34), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1336.78, -3115.19, 70.22), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-1336.19, -3045.03, 37.51), respawn = 60000 },
            { pos = vector3(-1338.77, -3045.54, 14.41), respawn = 60000 }
        },
        scenes = {
            {
                pos = vector3(-1481.41, -3041.72, 126.72),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 0
            },
            {
                pos = vector3(-1338.7, -2901.36, 120.36),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            },
            {
                pos = vector3(-1209.47, -3043.25, 112.4),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            },
            {
                pos = vector3(-1334.94, -3168.78, 116.84),
                pointAt = vector3(-1336.75, -3043.27, 71.68),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Block Fort"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fT2GoJKzQEumZ7Dt8zPP9g.json")),
        spawnpoints = {
            vector4(-944.84, -907.06, 606.67, 164.45),
            vector4(-877.07, -1022.26, 606.72, 68.86),
            vector4(-969.06, -1074.44, 606.69, 346.76),
            vector4(-1037.31, -956.93, 606.63, 256.04),
            vector4(-930.12, -846.65, 592.17, 159.36),
            vector4(-819.28, -1042.06, 592.22, 69.02),
            vector4(-982.42, -1134.05, 592.23, 343.66),
            vector4(-1094.38, -938.64, 592.18, 251.04),
            vector4(-1011.05, -894.76, 592.18, 207.0),
            vector4(-879.44, -945.87, 592.22, 118.78)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-983.26, -943.14, 606.62), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-918.52, -967.79, 606.63), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-930.46, -1036.85, 606.7), range = 5.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-994.97, -1012.25, 606.68), range = 5.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-956.63, -989.01, 592.19), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-877.96, -945.85, 591.79), respawn = 60000 },
            { pos = vector3(-1034.61, -1033.85, 591.74), respawn = 60000 }
        },
        bounds = {
            { vector3(-1104.69, -1270.52, 669.08), vector3(-211.4, -707.39, 541.24) }
        },
        scenes = {
            {
                pos = vector3(-769.43, -1050.66, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 0
            },
            {
                pos = vector3(-991.81, -1177.44, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            },
            {
                pos = vector3(-1129.71, -921.61, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            },
            {
                pos = vector3(-919.37, -810.07, 664.37),
                pointAt = vector3(-957.01, -990.07, 592.2),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Arena"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/sp-NQSL6Y0KS5nmCywnn5w.json")),
        spawnpoints = {
            vector4(-2629.18, -947.52, 196.13, 220.64),
            vector4(-2474.88, -911.89, 196.13, 158.33),
            vector4(-2392.67, -1282.19, 196.14, 43.64),
            vector4(-2549.23, -1316.19, 196.14, 339.28),
            vector4(-2590.7, -886.11, 196.14, 235.38),
            vector4(-2525.99, -873.94, 196.14, 145.69),
            vector4(-2432.92, -1341.63, 196.15, 55.85),
            vector4(-2487.63, -1353.66, 196.15, 324.96),
            vector4(-2492.63, -1108.47, 180.74, 284.77),
            vector4(-2531.19, -1118.91, 180.74, 99.6),
            vector4(-2527.52, -1101.49, 180.74, 50.41),
            vector4(-2495.83, -1125.97, 180.74, 229.92),
            vector4(-2522.03, -1131.18, 180.74, 149.46),
            vector4(-2501.83, -1096.55, 180.74, 328.15),
            vector4(-2537.69, -997.18, 196.13, 190.49),
            vector4(-2485.47, -1233.55, 196.14, 11.23)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2504.58, -1112.0, 219.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2517.019, -1114.99, 219.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2574.27, -829.38, 233.41), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-2449.27, -1398.48, 233.41), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2524.9, -1055.03, 207.21), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2498.96, -1172.82, 207.02), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2574.27, -829.38, 233.41), range = 10.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-2449.27, -1398.48, 233.41), range = 10.0 }
        },
        boxes = {
            { pos = vector3(-2476.6, -1105.99, 180.32), respawn = 60000 },
            { pos = vector3(-2547.23, -1121.61, 180.32), respawn = 60000 }
        },
        bounds = {
            { vector3(-2701.42, -1582.32, 382.92), vector3(-2351.8, -644.88, 138.53) }
        },
        scenes = {
            {
                pos = vector3(-2645.35, -982.83, 293.29),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 0
            },
            {
                pos = vector3(-2435.81, -940.16, 293.29),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            },
            {
                pos = vector3(-2374.23, -1247.98, 664.37),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            },
            {
                pos = vector3(-2580.74, -1296.71, 664.37),
                pointAt = vector3(-2511.71, -1113.71, 221.54),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Football"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fxVvFGgC4k28AJkBEOw_HA.json")),
        spawnpoints = {
            vector4(-1343.2219238281, -3136.4174804688, 524.71508789062, 2.8346455097198),
            vector4(-1340.2021484375, -2952.3427734375, 524.71508789062, 172.91339111328),
            vector4(-1298.3868408203, -3137.6704101562, 524.71508789062, 42.519683837891),
            vector4(-1385.6834716797, -2951.2087402344, 524.71508789062, 223.93701171875),
            vector4(-1389.2572021484, -3136.8791503906, 524.71508789062, 314.64566040039),
            vector4(-1294.2065429688, -2951.68359375, 524.71508789062, 133.22833251953),
            vector4(-1387.2791748047, -3043.5825195312, 524.73193359375, 269.29135131836),
            vector4(-1296.6593017578, -3045.1647949219, 524.73193359375, 87.874015808105),
            vector4(-1296.0922851562, -2995.1208496094, 524.71508789062, 87.874015808105),
            vector4(-1386.5010986328, -2993.6967773438, 524.71508789062, 272.1259765625),
            vector4(-1387.8725585938, -3093.6264648438, 524.71508789062, 269.29135131836),
            vector4(-1297.2526855469, -3095.0769042969, 524.71508789062, 90.708656311035)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1339.85, -2955.53, 542.25), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1343.85, -3133.91, 542.03), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1341.94, -3044.28, 524.73), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1339.85, -2955.53, 542.25), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1343.85, -3133.91, 542.03), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1341.94, -3044.28, 524.73), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-1340.57, -2968.31, 524.71), respawn = 60000 },
            { pos = vector3(-1342.98, -3120.58, 524.71), respawn = 60000 }
        },
        bounds = {
            { vector3(-1599.16, -3356.57, 500.18), vector3(-1069.02, -2756.58, 637.62) }
        },
        scenes = {
            {
                pos = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                pointAt = vector3(-1304.3077392578, -3096.4086914062, 533.94873046875),
                transitionTime = 0
            },
            {
                pos = vector3(-1304.3077392578, -3096.4086914062, 533.94873046875),
                pointAt = vector3(-1356.6988525391, -2999.6044921875, 532.4658203125),
                transitionTime = 10000
            },
            {
                pos = vector3(-1356.6988525391, -2999.6044921875, 532.4658203125),
                pointAt = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                transitionTime = 10000
            },
            {
                pos = vector3(-1449.2307128906, -2897.9340820312, 561.26220703125),
                pointAt = vector3(-1342.5098876953, -3132.8571777344, 528.62426757812),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Rainbow"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/dWmY-NwsG0CitBnrvoIPxw.json")),
        spawnpoints = {
            vector4(2540.9538574219, 7331.947265625, 806.35961914062, 87.874015808105),
            vector4(2540.8352050781, 7307.947265625, 806.35961914062, 90.708656311035),
            vector4(2540.6110839844, 7284.6987304688, 806.37646484375, 87.874015808105),
            vector4(2540.7429199219, 7261.3715820312, 806.37646484375, 85.039367675781),
            vector4(2540.8088378906, 7238.7294921875, 806.35961914062, 90.708656311035),
            vector4(2540.9802246094, 7213.2265625, 806.35961914062, 87.874015808105),
            vector4(2540.8088378906, 7191.3100585938, 806.35961914062, 90.708656311035),
            vector4(2541.0065917969, 7167.0859375, 806.35961914062, 90.708656311035),
            vector4(2540.5715332031, 7143.0991210938, 806.37646484375, 90.708656311035),
            vector4(2540.8220214844, 7121.2749023438, 806.35961914062, 90.708656311035),
            vector4(2364.3032226562, 7122.31640625, 806.89892578125, 272.1259765625),
            vector4(2364.8176269531, 7145.4462890625, 806.91577148438, 274.96063232422),
            vector4(2364.7648925781, 7169.3408203125, 806.91577148438, 272.1259765625),
            vector4(2364.4877929688, 7192.9711914062, 806.89892578125, 272.1259765625),
            vector4(2364.474609375, 7216.03515625, 806.89892578125, 272.1259765625),
            vector4(2364.6330566406, 7239.3759765625, 806.91577148438, 269.29135131836),
            vector4(2364.5012207031, 7263.1254882812, 806.89892578125, 272.1259765625),
            vector4(2364.4482421875, 7286.5053710938, 806.89892578125, 280.62991333008),
            vector4(2364.6330566406, 7309.0947265625, 806.91577148438, 269.29135131836),
            vector4(2364.6198730469, 7332.5932617188, 806.91577148438, 272.1259765625)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2453.1560058594, 7200.791015625, 798.10327148438), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2452.8000488281, 7252.7338867188, 798.10327148438), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2683.6352539062, 7227.244140625, 869.84985351562), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(2223.2438964844, 7226.59765625, 869.34423828125), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2453.1560058594, 7200.791015625, 798.10327148438), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2452.8000488281, 7252.7338867188, 798.10327148438), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2683.6352539062, 7227.244140625, 869.84985351562), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(2223.2438964844, 7226.59765625, 869.34423828125), range = 15.0 }
        },
        boxes = {
            { pos = vector3(2452.4438476562, 7109.89453125, 780.00659179688), respawn = 60000 },
            { pos = vector3(2452.8791503906, 7344.2504882812, 780.00659179688), respawn = 60000 },
            { pos = vector3(2452.8264160156, 7253.2353515625, 780.00659179688), respawn = 60000 },
            { pos = vector3(2453.0373535156, 7201.6088867188, 780.00659179688), respawn = 60000 }
        },
        bounds = {
            { vector3(1998.965, 7433.926, 700.5185), vector3(2907.662, 7076.217, 1031.371) }
        },
        scenes = {
            {
                pos = vector3(2326.0087890625,7318.826171875,849.27612304688),
                pointAt = vector3(2513.9208984375,7233.8505859375,814.51513671875),
                transitionTime = 0
            },
            {
                pos = vector3(2513.9208984375,7233.8505859375,814.51513671875),
                pointAt = vector3(2250.1186523438,7211.1430664062,890.20434570312),
                transitionTime = 10000
            },
            {
                pos = vector3(2250.1186523438,7211.1430664062,890.20434570312),
                pointAt = vector3(2541.1384277344,7160.3471679688,937.33325195312),
                transitionTime = 10000
            },
            {
                pos = vector3(2541.1384277344,7160.3471679688,937.33325195312),
                pointAt = vector3(2326.0087890625,7318.826171875,849.27612304688),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Canopy"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/fxVvFGgC4k28AJkBEOw_HA.json")),
        spawnpoints = {
            vector4(-1264.2592773438,-3007.4240722656,678.08203125,113.38582611084),
            vector4(-1256.4263916016,-3035.5649414062,678.06518554688,93.543304443359),
            vector4(-1257.9428710938,-3063.7978515625,678.11572265625,73.700790405273),
            vector4(-1268.9670410156,-3090.31640625,678.11572265625,53.858268737793),
            vector4(-1288.3780517578,-3111.9956054688,678.11572265625,36.850395202637),
            vector4(-1313.2482910156,-3125.7231445312,678.11572265625,17.007873535156),
            vector4(-1340.6505126953,-3130.6154785156,678.11572265625,0.0),
            vector4(-1368.3165283203,-3126.3955078125,678.09887695312,342.99212646484),
            vector4(-1394.1098632812,-3112.9582519531,678.11572265625,323.14959716797),
            vector4(-1413.4154052734,-3092.3735351562,678.11572265625,297.63778686523),
            vector4(-1425.0197753906,-3066.5275878906,678.09887695312,283.4645690918),
            vector4(-1427.6043701172,-3038.5319824219,678.08203125,266.45669555664),
            vector4(-1421.5384521484,-3012.0659179688,678.11572265625,246.61416625977),
            vector4(-1408.3253173828,-2989.8330078125,678.11572265625,235.27558898926),
            vector4(-1386.5670166016,-2970.9362792969,678.11572265625,212.59841918945),
            vector4(-1359.6395263672,-2960.123046875,678.1494140625,192.75592041016),
            vector4(-1331.4066162109,-2959.0153808594,678.13256835938,170.07873535156),
            vector4(-1304.17578125,-2967.1647949219,678.09887695312,153.07086181641),
            vector4(-1280.6241455078,-2983.9780273438,678.11572265625,141.7322845459)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1231.0153808594,-2991.9165039062,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1386.5670166016,-2931.3098144531,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1453.6087646484,-3094.8000488281,679.5986328125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1301.6702880859,-3160.5759277344,679.5986328125), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1231.0153808594,-2991.9165039062,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1386.5670166016,-2931.3098144531,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1453.6087646484,-3094.8000488281,679.5986328125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1301.6702880859,-3160.5759277344,679.5986328125), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-1353.2043457031,-3016.4438476562,665.2255859375), respawn = 60000 },
            { pos = vector3(-1332.0395507812,-3072.9099121094,665.158203125), respawn = 60000 },
            { pos = vector3(-1368.8703613281,-3057.1516113281,665.12451171875), respawn = 60000 },
            { pos = vector3(-1314.1186523438,-3031.6220703125,665.27612304688), respawn = 60000 }
        },
        bounds = {
            { vector3(-1207.416, -2902.855, 657.3636), vector3(-1475.204, -3182.44, 780.4369) }
        },
        scenes = {
            {
                pos = vector3(-1399.5560302734,-2923.2790527344,727.77221679688),
                pointAt = vector3(-1235.9604492188,-2985.0856933594,687.58544921875),
                transitionTime = 0
            },
            {
                pos = vector3(-1235.9604492188,-2985.0856933594,687.58544921875),
                pointAt = vector3(-1451.0900878906,-3098.4526367188,687.56860351562),
                transitionTime = 10000
            },
            {
                pos = vector3(-1451.0900878906,-3098.4526367188,687.56860351562),
                pointAt = vector3(-1279.4637451172,-3097.4768066406,743.8974609375),
                transitionTime = 10000
            },
            {
                pos = vector3(-1279.4637451172,-3097.4768066406,743.8974609375),
                pointAt = vector3(-1399.5560302734,-2923.2790527344,727.77221679688),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Creeper"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/bQYigRdQX0OxTZo3ZIAuFg.json")),
        spawnpoints = {
            vector4(-350.66372680664,310.82638549805,623.28637695312,192.75592041016+1),
            vector4(-332.42636108398,315.67913818359,623.28637695312,189.92126464844+1),
            vector4(-200.41317749023,-479.40658569336,623.26953125,8.5039367675781+1),
            vector4(-254.99340820312,-443.63076782227,623.23583984375,280.62991333008+1),
            vector4(-162.75164794922,-434.10989379883,623.26953125,96.377944946289+1),
            vector4(-235.66152954102,-488.9274597168,623.48876953125,8.5039367675781+1),
            vector4(-325.83294677734,316.06155395508,623.28637695312,189.92126464844+1),
            vector4(-304.15383911133,319.75384521484,623.28637695312,192.75592041016+1),
            vector4(-296.88790893555,320.92749023438,623.18530273438,192.75592041016+1),
            vector4(-289.88571166992,321.982421875,623.18530273438,192.75592041016+1),
            vector4(-318.25054931641,317.93408203125,623.28637695312,192.75592041016+1),
            vector4(-264.06594848633,237.63955688477,623.28637695312,99.212593078613+1),
            vector4(-257.44616699219,190.95825195312,623.18530273438,99.212593078613+1),
            vector4(-210.68571472168,-480.54064941406,623.32006835938,8.5039367675781+1),
            vector4(-222.42196655273,-484.82638549805,623.28637695312,8.5039367675781+1),
            vector4(-352.54943847656,215.53846740723,623.28637695312,280.62991333008+1),
            vector4(-344.9274597168,157.70111083984,623.28637695312,280.62991333008+1),
            vector4(-259.22637939453,-411.32305908203,623.26953125,280.62991333008+1),
            vector4(-311.48571777344,318.76483154297,623.26953125,192.75592041016+1),
            vector4(-173.92086791992,-380.72967529297,624.6513671875,96.377944946289+1),
            vector4(-172.27252197266,-479.82858276367,623.26953125,8.5039367675781+1),
            vector4(-179.89450073242,-480.77801513672,623.30322265625,8.5039367675781+1),
            vector4(-193.72747802734,-479.30108642578,623.30322265625,8.5039367675781+1),
            vector4(-252.68571472168,-465.982421875,623.26953125,274.96063232422+1),
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-298.54943847656,27.112091064453,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-259.21319580078,-58.971424102783,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-265.88571166992,-111.81098937988,623.69091796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-227.1692199707,-198.38241577148,623.69091796875), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-261.54724121094,32.716487884521,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-273.56042480469,-61.767028808594,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-251.90768432617,-110.14944458008,623.69091796875), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-263.06372070312,-203.93406677246,623.67407226562), range = 15.0 }
        },
        boxes = {
            { pos = vector3(-264.01318359375,-76.338455200195,623.69091796875), respawn = 60000 },
            { pos = vector3(-261.0989074707,-95.709892272949,623.69091796875), respawn = 60000 }
        },
        bounds = {
            { vector3(-133.8246, -544.8019, 601.619), vector3(-409.2521, 386.2829, 702.9837) }
        },
        scenes = {
            {
                pos = vector3(-236.61099243164,-474.29010009766,650.41455078125),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 0
            },
            {
                pos = vector3(-245.49890136719,-373.1340637207,658.43505859375),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 10000
            },
            {
                pos = vector3(-302.10989379883,20.400001525879,644.24755859375),
                pointAt = vector3(-322.32528686523,301.1076965332,636.1259765625),
                transitionTime = 10000
            },
            {
                pos = vector3(-399.40219116211,213.90330505371,679.0087890625),
                pointAt = vector3(-204.40878295898,-461.30108642578,634.1376953125),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Target Abyss"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/5p4j2wmBCk2XateztGnVww.json")),
        spawnpoints = {
            vector4(-267.05932617188,6574.9184570312,356.31787109375,229.60629272461),
            vector4(-251.49890136719,6589.9912109375,356.3515625,223.93701171875),
            vector4(-233.43296813965,6608.1494140625,356.3515625,229.60629272461),
            vector4(-218.55824279785,6622.998046875,356.31787109375,226.77166748047),
            vector4(58.430770874023,6343.54296875,356.30102539062,48.188972473145),
            vector4(45.112091064453,6330.2504882812,356.33471679688,45.354328155518),
            vector4(26.874727249146,6312.1450195312,356.33471679688,51.023624420166),
            vector4(13.898901939392,6298.6547851562,356.30102539062,42.519683837891),
            vector4(-93.929672241211,6348.0131835938,356.2841796875,317.48031616211),
            vector4(-148.3384552002,6356.0571289062,356.2841796875,45.354328155518),
            vector4(-205.18681335449,6411.7055664062,356.26733398438,226.77166748047),
            vector4(-213.85055541992,6465.6528320312,356.26733398438,317.48031616211),
            vector4(-108.83076477051,6569.9736328125,356.2841796875,133.22833251953),
            vector4(-54.764831542969,6561.6396484375,356.2841796875,226.77166748047),
            vector4(1.5428572893143,6505.4770507812,356.2841796875,53.858268737793),
            vector4(9.7978029251099,6451.4638671875,356.2841796875,144.56690979004),
            vector4(-144.77801513672,6500.80859375,356.2841796875,229.60629272461),
            vector4(-57.309886932373,6412.140625,356.30102539062,42.519683837891)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-94.905494689941,6511.2397460938,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-154.24615478516,6451.7670898438,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-108.15823364258,6405.5078125,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-49.186813354492,6465.2177734375,356.2841796875), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(66.105499267578,6291.0200195312,356.30102539062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-279.01977539062,6635.7890625,356.30102539062), range = 10.0 }
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1.0021934509277,6360.8569335938,336.94067382812), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(36.013191223145,6449.3012695312,337.46301269531), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-94.628570556641,6319.806640625,337.1259765625), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-89.65714263916,6390.8305664062,336.82275390625), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-29.736261367798,6449.6440429688,337.27770996094), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(11.736264228821,6526.4306640625,337.24389648438), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-55.147247314453,6502.2329101562,336.95751953125), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-142.54945373535,6417.455078125,336.18237304688), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-164.69010925293,6344.7954101562,336.55310058594), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-37.529670715332,6574.3911132812,336.97436523438), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-216.63296508789,6391.9780273438,337.34509277344), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-173.24835205078,6465.2045898438,337.31140136719), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-108.97581481934,6530.7163085938,336.68786621094), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-109.66152954102,6602.4790039062,336.53625488281), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-242.69010925293,6464.1889648438,337.59777832031), range = 25.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-199.34504699707,6558.6196289062,336.38464355469), range = 25.0 }
        },
        boxes = {
            { pos = vector3(-242.67692565918,6599.1826171875,356.3515625), respawn = 60000 },
            { pos = vector3(35.696704864502,6321.2836914062,356.33471679688), respawn = 60000 }
        },
        bounds = {
            { vector3(-575.1422, 5993.301, 353.8809), vector3(397.5003, 6950.718, 478.4523) }
        },
        scenes = {
            {
                pos = vector3(218.83515930176,6244.2856445312,431.93994140625),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 0
            },
            {
                pos = vector3(-24.263732910156,6491.0639648438,363.78247070312),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            },
            {
                pos = vector3(-240.69889831543,6585.2705078125,419.16772460938),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            },
            {
                pos = vector3(-410.22857666016,6305.4462890625,528.2197265625),
                pointAt = vector3(-103.09450531006,6460.826171875,356.2841796875),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Water Pool"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/KSTCyZCPQUaLq1plMssHbA.json")),
        spawnpoints = {
            vector4(-1661.9736328125,-1662.3560791016,5.6900634765625,187.08660888672),
            vector4(-1776.6988525391,-1728.5802001953,5.6900634765625,229.60629272461),
            vector4(-1775.5780029297,-1945.9252929688,5.6900634765625,311.81103515625),
            vector4(-1660.8395996094,-2012.0703125,5.6900634765625,351.49606323242),
            vector4(-1473.0329589844,-1902.7648925781,5.6900634765625,68.031494140625),
            vector4(-1473.2967529297,-1770.0659179688,5.6900634765625,104.88188934326),
            vector4(-1661.8549804688,-1662.3560791016,5.6900634765625,201.25984191895),
            vector4(-1776.7780761719,-1728.5670166016,5.6900634765625,243.77952575684),
            vector4(-1832.8352050781,-1897.6614990234,5.7069091796875,289.13385009766),
            vector4(-1590.9362792969,-2036.5845947266,5.7069091796875,11.338582038879),
            vector4(-1486.8527832031,-1697.5120849609,5.7069091796875,136.06298828125),
            vector4(-1592.1889648438,-1636.6549072266,5.6900634765625,161.57479858398),
            vector4(-1832.6373291016,-1776.2109375,5.7069091796875,246.61416625977),
            vector4(-1832.7824707031,-1898.3341064453,5.7069091796875,286.29919433594),
            vector4(-1557.982421875,-1974.3033447266,5.6900634765625,28.34645652771),
            vector4(-1558.9582519531,-1703.1955566406,5.6900634765625,153.07086181641),
            vector4(-1793.4989013672,-1839.3363037109,5.6900634765625,272.1259765625),
            vector4(-1740.1845703125,-1659.2835693359,5.6900634765625,209.76377868652),
            vector4(-1431.7054443359,-1835.7362060547,5.6900634765625,87.874015808105),
            vector4(-1739.0900878906,-2015.0900878906,5.6900634765625,331.65353393555)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1643.9604492188,-1850.1494140625,9.043212890625), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1644.9362792969,-1824.3692626953,9.09375), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-1621.9252929688,-1836.3824462891,9.043212890625), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1643.9604492188,-1850.1494140625,9.043212890625), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1644.9362792969,-1824.3692626953,9.09375), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-1621.9252929688,-1836.3824462891,9.043212890625), range = 15.0 },
        },
        boxes = {
            { pos = vector3(-1663.7670898438,-1792.24609375,5.6900634765625), respawn = 120000 },
            { pos = vector3(-1585.0812988281,-1836.9494628906,5.6900634765625), respawn = 120000 },
            { pos = vector3(-1662.158203125,-1882.2857666016,5.6900634765625), respawn = 120000 },
        },
        bounds = {
            { vector3(-1921.023, -2117.201, -6.581688), vector3(-1317.925, -1529.205, 65.74789) }
        },
        scenes = {
            {
                pos = vector3(-1334.7956542969,-1842.3824462891,105.32312011719),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 0
            },
            {
                pos = vector3(-1559.0373535156,-1966.4439697266,24.983154296875),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            },
            {
                pos = vector3(-1801.5296630859,-1917.0856933594,32.076904296875),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            },
            {
                pos = vector3(-1761.9692382812,-1634.2416992188,60.485717773438),
                pointAt = vector3(-1635.82421875,-1840.4307861328,13.10400390625),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Football Hub"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/tMPO7CZUyU6xXRYtcwfk5w.json")),
        spawnpoints = {
            vector4(3342.0395507812,4839.7451171875,233.39855957031,306.14172363281),
            vector4(3374.4790039062,4889.4990234375,233.39855957031,2.8346455097198),
            vector4(3365.6572265625,4955.6440429688,233.39855957031,340.15747070312),
            vector4(3418.0219726562,5001.4155273438,233.39855957031,51.023624420166),
            vector4(3437.7099609375,5055.349609375,233.39855957031,96.377944946289),
            vector4(3460.2197265625,5113.173828125,233.39855957031,110.55118560791),
            vector4(3446.8352050781,5162.755859375,233.39855957031,218.2677154541),
            vector4(3394.03515625,5230.6943359375,233.39855957031,223.93701171875),
            vector4(3389.8681640625,5193.7055664062,233.39855957031,150.23622131348),
            vector4(3356.228515625,5142.9887695312,233.39855957031,198.42520141602),
            vector4(3331.2658691406,5079.6528320312,233.39855957031,218.2677154541),
            vector4(3348.1450195312,5041.7670898438,233.39855957031,110.55118560791),
            vector4(3311.1955566406,5024.4262695312,233.39855957031,195.5905456543),
            vector4(3290.6374511719,4962.9892578125,233.39855957031,280.62991333008),
            vector4(3476.6638183594,5173.7934570312,233.39855957031,138.89762878418),
            vector4(3255.2834472656,4885.6352539062,233.39855957031,325.98425292969)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3324.7912597656,4917.3759765625,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3378.7648925781,5055.9428710938,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3430.2197265625,5187.5341796875,196.51428222656), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3310.8791503906,4881.138671875,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3324.7912597656,4917.3364257812,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3370.6550292969,5035.6220703125,236.19555664062), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3391.3186035156,5088.9228515625,236.12817382812), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(3425.6572265625,5177.4462890625,236.19555664062), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3317.8154296875,4898.966796875,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3348.8439941406,4978.0747070312,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3362.7297363281,5015.7758789062,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3379.9384765625,5059.0815429688,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3396.8835449219,5103.4946289062,236.19555664062), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(3438.421875,5211.2836914062,236.19555664062), range = 15.0 },
        },
        boxes = {
            { pos = vector3(3311.1296386719,4880.3735351562,236.19555664062), respawn = 60000 },
            { pos = vector3(3358.6682128906,4994.3603515625,196.48059082031), respawn = 60000 }
        },
        bounds = {
            { vector3(3552.24, 5267.837, 190.9137), vector3(3171.393, 4793.695, 400.3567) }
        },
        scenes = {
            {
                pos = vector3(3365.2087402344,5229.7846679688,278.40441894531),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 0
            },
            {
                pos = vector3(3459.0725097656,5082.2109375,239.0263671875),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            },
            {
                pos = vector3(3418.5759277344,4907.8813476562,308.17797851562),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            },
            {
                pos = vector3(3277.2922363281,4870.8393554688,240.59338378906),
                pointAt = vector3(3374.8088378906,5045.578125,237.42565917969),
                transitionTime = 10000
            }
        }
    },
    ["Pass The Bomb: Mounds"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/QHmFVXPtnkmHvBW6gMEMyg.json")),
        spawnpoints = {
            vector4(491.38021850586,-1609.3055419922,265.85131835938,323.14959716797),
            vector4(452.017578125,-1669.2263183594,265.85131835938,136.06298828125),
            vector4(494.76922607422,-1739.8681640625,250.93920898438,121.88976287842),
            vector4(312.21099853516,-1777.3319091797,250.92236328125,73.700790405273),
            vector4(359.03735351562,-1678.5230712891,243.01977539062,351.49606323242),
            vector4(269.60440063477,-1671.7054443359,243.01977539062,0.0),
            vector4(174.13186645508,-1682.4923095703,243.01977539062,5.6692910194397),
            vector4(139.58242797852,-1731.4681396484,258.23510742188,249.44882202148),
            vector4(118.41758728027,-1767.7318115234,265.46374511719,306.14172363281),
            vector4(29.208793640137,-1718.123046875,265.41320800781,19.842519760132),
            vector4(-38.610988616943,-1579.7934570312,276.71936035156,306.14172363281),
            vector4(-55.832962036133,-1496.5318603516,276.71936035156,204.09449768066),
            vector4(-42.263736724854,-1444.9846191406,276.71936035156,325.98425292969),
            vector4(35.81538772583,-1455.8901367188,262.90258789062,255.11810302734),
            vector4(145.95166015625,-1504.8923339844,267.064453125,0.0),
            vector4(165.32307434082,-1599.9428710938,267.064453125,195.5905456543),
            vector4(306.35604858398,-1630.7208251953,230.146484375,53.858268737793),
            vector4(260.28131103516,-1559.3275146484,230.146484375,252.28346252441),
            vector4(364.8132019043,-1567.3978271484,243.03662109375,0.0),
            vector4(408.25054931641,-1510.0219726562,243.03662109375,48.188972473145),
            vector4(349.84616088867,-1452.7912597656,251.51208496094,5.6692910194397),
            vector4(291.0725402832,-1477.7274169922,249.69226074219,110.55118560791),
            vector4(141.03297424316,-1458.0395507812,243.05346679688,221.10237121582),
            vector4(229.97802734375,-1419.0856933594,235.48791503906,243.77952575684),
            vector4(152.42637634277,-1373.4989013672,238.68933105469,79.370079040527),
            vector4(154.94505310059,-1579.859375,267.064453125,280.62991333008),
            vector4(146.65054321289,-1406.2945556641,259.01025390625,257.95275878906),
            vector4(258.67254638672,-1674.2241210938,243.01977539062,238.11022949219),
            vector4(289.34506225586,-1589.4593505859,244.21606445312,325.98425292969),
            vector4(283.35824584961,-1598.123046875,244.24987792969,147.40158081055)
        },
        vehicles = cfg.vehicleCategories["Main"],
        particles = {
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(174.25054931641,-1624.9846191406,267.064453125), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(155.88131713867,-1288.5626220703,257.07250976562), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(388.48352050781,-1421.1296386719,230.88793945312), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(381.48132324219,-1771.3319091797,250.80444335938), range = 10.0 },
            { name = "scr_indep_firework_fountain", asset = "scr_indep_fireworks", pos = vector3(50.004398345947,-1569.3626708984,243.0703125), range = 10.0 },
        },
        sounds = {
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(174.25054931641,-1624.9846191406,267.064453125), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(155.88131713867,-1288.5626220703,257.07250976562), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(388.48352050781,-1421.1296386719,230.88793945312), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(381.48132324219,-1771.3319091797,250.80444335938), range = 15.0 },
            { name = "Alarm_03", soundset = "DLC_Stunt_Race_Alarms_Soundset", pos = vector3(50.004398345947,-1569.3626708984,243.0703125), range = 15.0 },
        },
        boxes = {
            { pos = vector3(285.49450683594,-1593.1252441406,244.23291015625), respawn = 60000 },
            { pos = vector3(335.45935058594,-1361.5120849609,259.85278320312), respawn = 60000 },
            { pos = vector3(521.44616699219,-1571.3275146484,265.69958496094), respawn = 60000 },
            { pos = vector3(127.88571166992,-1424.0307617188,259.12817382812), respawn = 60000 },
            { pos = vector3(174.25054931641,-1624.9846191406,267.064453125), respawn = 60000 },
            { pos = vector3(-51.349449157715,-1545.5604248047,276.71936035156), respawn = 60000 }
        },
        bounds = {
            { vector3(638.1794, -1240.661, 159.0924), vector3(-121.7662, -1824.227, 285.7914) }
        },
        scenes = {
            {
                pos = vector3(-71.525268554688,-1687.9516601562,369.88208007812),
                pointAt = vector3(285.20440673828,-1595.5516357422,244.24987792969),
                transitionTime = 0
            },
            {
                pos = vector3(221.90769958496,-1734.3297119141,271.15893554688),
                pointAt = vector3(285.20440673828,-1595.5516357422,244.24987792969),
                transitionTime = 10000
            },
            {
                pos = vector3(282.09231567383,-1483.9252929688,279.88720703125),
                pointAt = vector3(521.8681640625,-1523.3538818359,277.17431640625),
                transitionTime = 10000
            },
            {
                pos = vector3(450.54064941406,-1274.1098632812,357.46362304688),
                pointAt = vector3(521.8681640625,-1523.3538818359,277.17431640625),
                transitionTime = 10000
            }
        }
    }
}

cfg.handlings = {
    [`dominator7`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`toros`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`tailgater2`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`coquette4`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`vstr`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`jester4`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`comet6`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`growler`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`tigon`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    },
    [`komoda`] = {
        fDownforceModifier = 10.0,
        fTractionCurveMin = 6.0,
        fTractionCurveMax = 6.0,
        fAntiRollBarForce = 0.9,
        fAntiRollBarBiasFront = 0.6,
        fRollCentreHeightFront = 0.4,
        fRollCentreHeightRear = 0.2
    }
}

return cfg