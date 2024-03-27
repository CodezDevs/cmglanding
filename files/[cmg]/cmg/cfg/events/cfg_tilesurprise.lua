
local cfg = {}

cfg.minPlayers = 4

cfg.locations = {
    ["Tile Surprise"] = {
        data = json.decode(LoadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/5-WwiwJ7Lk6WyqPIz6aN-Q.json")),
        spawnpoints = {
            vector4(-3921.81, -1695.96, 630.69, 359.17),
            vector4(-3900.07, -1696.41, 630.69, 358.25),
            vector4(-3878.12, -1696.14, 630.69, 1.85),
            vector4(-3867.71, -1684.25, 630.69, 88.24),
            vector4(-3867.59, -1660.08, 630.69, 91.42),
            vector4(-3867.91, -1636.15, 630.69, 89.13),
            vector4(-3878.38, -1624.24, 630.7, 179.29),
            vector4(-3899.97, -1624.5, 630.7, 180.48),
            vector4(-3921.79, -1624.66, 630.7, 180.17),
            vector4(-3932.51, -1626.17, 630.7, 270.27),
            vector4(-3932.13, -1698, 630.7, 268.24),
            vector4(-3932.35, -1684.22, 630.69, 269.23)
        },
        vehicles = {
            ["Issi One"] = {
                model = `issi2`,
                level = 0
            },
            ["Rhapsody"] = {
                model = `rhapsody`,
                level = 0
            },
            ["Penumbra"] = {
                model = `penumbra`,
                level = 5
            },
            ["Tampa"] = {
                model = `tampa`,
                level = 10
            },
            ["Sultan 2"] = {
                model = `sultan2`,
                level = 20
            },
            ["Italia RSX"] = {
                model = `italirsx`,
                level = 30
            },
            ["Retinue"] = {
                model = `retinue`,
                level = 40
            },
            ["Slam Van"] = {
                model = `slamvan`,
                level = 50
            },
            ["Impaler 4"] = {
                model = `impaler4`,
                level = 60
            },
            ["Kalahari"] = {
                model = `kalahari`,
                level = 70
            },
            ["Dominator 6"] = {
                model = `dominator6`,
                level = 80
            },
            ["Slamvan 6"] = {
                model = `slamvan6`,
                level = 90
            },
            ["Speedo 2"] = {
                model = `speedo2`,
                level = 100
            }
        },
        scenes = {
            {
                pos = vector3(-3860.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 0
            },
            {
                pos = vector3(-3910.0, -1622.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3960.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3910.0, -1732.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            }
        }
    }
}

return cfg
