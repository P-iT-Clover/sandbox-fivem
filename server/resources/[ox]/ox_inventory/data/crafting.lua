return {
    -- {
    --     name = 'debug_crafting',
    --     items = {
    --         {
    --             name = 'lockpick',
    --             ingredients = {
    --                 scrapmetal = 5,
    --                 WEAPON_HAMMER = 0.05
    --             },
    --             duration = 5000,
    --             count = 2,
    --         },
    --         {
    --             name = 'WEAPON_PISTOLXM3',
    --             ingredients = {
    --                 scrapmetal = 50,
    --                 WEAPON_HAMMER = 0.1,
    --             },
    --             duration = 10000,
    --         }
    --     },
    --     points = {
    --         vec3(-1147.083008, -2002.662109, 13.180260),
    --         vec3(-345.374969, -130.687088, 39.009613)
    --     },
    --     zones = {
    --         {
    --             coords = vec3(-1146.2, -2002.05, 13.2),
    --             size = vec3(3.8, 1.05, 0.15),
    --             distance = 1.5,
    --             rotation = 315.0,
    --         },
    --         {
    --             coords = vec3(-346.1, -130.45, 39.0),
    --             size = vec3(3.8, 1.05, 0.15),
    --             distance = 1.5,
    --             rotation = 70.0,
    --         },
    --     },
    --     blip = { id = 566, colour = 31, scale = 0.8 },
    -- },

    { -- Salvage Exchange
        name = 'salvage-exchange',
        label = 'Salvage Exchange',
        items = {
            {
                name = 'ironbar',
                ingredients = {
                    salvagedparts = 25,
                },
                duration = 5000,
                count = 10,
            },
            {
                name = 'scrapmetal',
                ingredients = {
                    salvagedparts = 10,
                },
                duration = 5000,
                count = 20,
            },
            {
                name = 'heavy_glue',
                ingredients = {
                    salvagedparts = 10,
                },
                duration = 5000,
                count = 20,
            },
            {
                name = 'rubber',
                ingredients = {
                    salvagedparts = 8,
                },
                duration = 5000,
                count = 16,
            },
            {
                name = 'plastic',
                ingredients = {
                    salvagedparts = 3,
                },
                duration = 5000,
                count = 6,
            },
            {
                name = 'copperwire',
                ingredients = {
                    salvagedparts = 2,
                },
                duration = 5000,
                count = 4,
            },
            {
                name = 'electronic_parts',
                ingredients = {
                    salvagedparts = 8,
                },
                duration = 5000,
                count = 32,
            },
        },
        peds = {
            {
                model = 's_m_m_gardener_01',
                coords = vec3(2350.925, 3145.093, 47.209),
                heading = 169.500,
                distance = 2.0,
                renderDistance = 25.0,
                label = 'Salvage Exchange',
                icon = 'fas fa-ring',
                animation = 'WORLD_HUMAN_LEANING',
            },
        },
    },

    { -- Smelter
        name = 'material-refiner',
        label = 'Material Refiner',
        items = {
            {
                name = 'refined_metal',
                ingredients = {
                    scrapmetal = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_iron',
                ingredients = {
                    ironbar = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_copper',
                ingredients = {
                    copperwire = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_plastic',
                ingredients = {
                    plastic = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_glue',
                ingredients = {
                    heavy_glue = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_electronics',
                ingredients = {
                    electronic_parts = 1000,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'refined_rubber',
                ingredients = {
                    rubber = 1000,
                },
                duration = 5000,
                count = 1,
            },
        },
        props = {
            {
                model = 'gr_prop_gr_lathe_01a',
                coords = vec3(-582.435, -1612.158, 26.011),
                heading = 86.292,
                distance = 3.0,
                renderDistance = 25.0,
                label = 'Material Refiner',
                icon = 'fas fa-minimize',
            },
        },
    },

    { -- Sign Exchange
        name = 'sign-exchange',
        label = 'Sign Exchange',
        items = {
            {
                name = 'ironbar',
                ingredients = {
                    sign_dontblock = 5,
                    sign_leftturn = 5,
                    sign_nopark = 5,
                    sign_notresspass = 5,
                },
                duration = 5000,
                count = 50,
            },
            {
                name = 'scrapmetal',
                ingredients = {
                    sign_rightturn = 5,
                    sign_stop = 5,
                    sign_uturn = 5,
                    sign_walkingman = 5,
                    sign_yield = 5,
                },
                duration = 5000,
                count = 75,
            }
        },
        peds = {
            {
                model = 's_m_m_dockwork_01',
                coords = vec3(-185.572, 6270.046, 30.489),
                heading = 56.226,
                distance = 2.0,
                renderDistance = 25.0,
                label = 'Sign Exchange',
                icon = 'fas fa-ring',
                animation = 'WORLD_HUMAN_JANITOR',
            },
        },
    },

    { -- Sign Exchange 2
        name = 'sign-exchange-2',
        label = 'Sign Exchange',
        items = {
            {
                name = 'at_clip_extended_pistol',
                ingredients = {
                    refined_metal = 1,
                    refined_glue = 1,
                    refined_plastic = 1,
                },
                duration = 5000,
                count = 1,
            },
        },
        peds = {
            {
                model = 's_m_m_dockwork_01',
                coords = vec3(-1746.624, 3688.159, 33.334),
                heading = 343.688,
                distance = 2.0,
                renderDistance = 25.0,
                label = 'Sign Exchange',
                icon = 'fas fa-ring',
                animation = 'WORLD_HUMAN_CLIPBOARD',
            },
        },
    },

    { -- Recycle Exchange
        name = 'recycle-exchange',
        label = 'Recycle Exchange',
        items = {
            {
                name = 'ironbar',
                ingredients = {
                    recycledgoods = 25,
                },
                duration = 5000,
                count = 10,
            },
            {
                name = 'scrapmetal',
                ingredients = {
                    recycledgoods = 10,
                },
                duration = 5000,
                count = 20,
            },
            {
                name = 'heavy_glue',
                ingredients = {
                    recycledgoods = 10,
                },
                duration = 5000,
                count = 20,
            },
            {
                name = 'rubber',
                ingredients = {
                    recycledgoods = 8,
                },
                duration = 5000,
                count = 16,
            },
            {
                name = 'plastic',
                ingredients = {
                    recycledgoods = 3,
                },
                duration = 5000,
                count = 6,
            },
            {
                name = 'copperwire',
                ingredients = {
                    recycledgoods = 2,
                },
                duration = 5000,
                count = 4,
            },
            {
                name = 'glue',
                ingredients = {
                    recycledgoods = 2,
                },
                duration = 5000,
                count = 4,
            }
        },
        peds = {
            {
                model = 's_m_m_dockwork_01',
                coords = vec3(-334.833, -1577.247, 24.222),
                heading = 20.715,
                distance = 2.0,
                renderDistance = 25.0,
                label = 'Sign Exchange',
                icon = 'fas fa-recycle',
                animation = 'WORLD_HUMAN_JANITOR',
            },
        },
    },

    { -- Smelter
        name = 'smelter',
        label = 'Smelter',
        items = {
            {
                name = 'goldbar',
                ingredients = {
                    goldore = 1,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'silverbar',
                ingredients = {
                    silverore = 1,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'ironbar',
                ingredients = {
                    ironore = 1,
                },
                duration = 5000,
                count = 1,
            }
        },
        props = {
            {
                model = 'gr_prop_gr_bench_02b',
                coords = vec3(1112.165, -2030.834, 29.914),
                heading = 235.553,
                distance = 3.0,
                renderDistance = 25.0,
                label = 'Smelter',
                icon = 'fas fa-fire-burner',
            },
        },
    },

    -- Schematic Benches Start --

    { -- City Tunnels Schematic Bench
        name = 'city-tunnels',
        label = 'Tool Bench',
        items = {
            -- Don't know how I'll do schematics just yet / leaving it for now
        },
        props = {
            {
                model = 'prop_tool_bench02',
                coords = vec3(42.20, -641.86, 9.77),
                heading = 337.98,
                distance = 3.0,
                renderDistance = 25.0,
                label = 'Use Tool Bench',
                icon = 'fas fa-toolbox',
            },
        },
    },
    { -- East Train Schematic Bench
        name = 'east-train',
        label = 'Tool Bench',
        items = {
            -- Don't know how I'll do schematics just yet / leaving it for now
        },
        props = {
            {
                model = 'prop_tool_bench02',
                coords = vec3(925.916, -1488.888, 29.4938),
                heading = 89.19,
                distance = 3.0,
                renderDistance = 25.0,
                label = 'Use Tool Bench',
                icon = 'fas fa-toolbox',
            },
        },
    },
    { -- Cluck Factory Schematic Bench
        name = 'cluck-factory',
        label = 'Tool Bench',
        items = {
            -- Don't know how I'll do schematics just yet / leaving it for now
        },
        props = {
            {
                model = 'prop_tool_bench02',
                coords = vec3(-180.69, 6155.62, 30.21),
                heading = 314.045,
                distance = 3.0,
                renderDistance = 25.0,
                label = 'Use Tool Bench',
                icon = 'fas fa-toolbox',
            },
        },
    },

    -- Schematic Benches End --

    -- Weed Packaging  Start --

    { -- Weed Packaging Bench
        name = 'weed-packaging',
        label = 'Weed Processing',
        items = {
            {
                name = 'weed_brick',
                ingredients = {
                    plastic_wrap = 2,
                    weed_bud = 200,
                },
                duration = 8000,
                count = 1,
            },
            {
                name = 'weed_baggy',
                ingredients = {
                    baggy = 1,
                    weed_bud = 2,
                },
                duration = 2000,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Open Crafting Bench',
                icon = 'fas fa-wrench',
                coords = vec3(1056.47, -2450.58, 29.29),
                size = vec3(2.8, 1.0, 2.0),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    -- Weed Packaging End --

    -- Mechanic Crafting Benches Start --

    { -- Redline Mechanic Shop
        name = 'redline-mechanic-1',
        label = 'Mechanic Workbench',
        groups = { 'redline' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-584.07, -939.57, 23.89),
                size = vec3(3.8, 1.0, 1.6),
                distance = 1.5,
                rotation = 270.0,
            },
        },
    },

    { -- Redline Mechanic Shop 2
        name = 'redline-mechanic-2',
        label = 'Mechanic Workbench',
        groups = { 'redline' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-589.19, -926.07, 28.14),
                size = vec3(2.0, 1.0, 1.6),
                distance = 1.5,
                rotation = 270.0,
            },
        },
    },

    { -- Tuna Mechanic Shop
        name = 'tuna-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'tuna' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(133.37, -3051.24, 7.04),
                size = vec3(11.8, 1.8, 2.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Tirenutz Mechanic Shop
        name = 'tirenutz-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'tirenutz' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-57.5, -1325.07, 29.27),
                size = vec3(4.2, 1.0, 2.8),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Hayes Mechanic Shop
        name = 'hayes-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'hayes' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-1421.67, -456.38, 35.91),
                size = vec3(3.8, 1.0, 2.4),
                distance = 1.5,
                rotation = 302.0,
            },
        },
    },

    { -- Atomic Mechanic Shop
        name = 'atomic-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'atomic' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(476.67, -1876.93, 26.09),
                size = vec3(4.0, 1.2, 3.0),
                distance = 1.5,
                rotation = 25.0,
            },
        },
    },

    { -- Harmony Mechanic Shop
        name = 'harmony-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'harmony' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(1176.15, 2635.21, 37.75),
                size = vec3(3.8, 1.4, 2.8),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Auto Exotics Mechanic Shop
        name = 'autoexotics-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'autoexotics' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(558.99, -171.67, 54.51),
                size = vec3(3.6, 1.2, 2.6),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Ottos Mechanic Shop
        name = 'ottos-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'ottos' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(950.91, -979.09, 39.5),
                size = vec3(3.8, 1.2, 2.2),
                distance = 1.5,
                rotation = 4.0,
            },
        },
    },

    { -- Bennys Mechanic Shop
        name = 'bennys-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'bennys' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-205.3346, -1335.6605, 31.300),
                size = vec3(5.0, 1.0, 3.0),
                distance = 1.5,
                rotation = 270.0,
            },
        },
    },

    { -- Paleto Tuners Mechanic Shop
        name = 'paleto-tuners-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'paleto_tuners' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(163.12, 6364.78, 31.27),
                size = vec3(4.4, 2.0, 2.4),
                distance = 1.5,
                rotation = 30.0,
            },
        },
    },

    { -- Dreamworks Mechanic Shop
        name = 'dreamworks-mechanic',
        label = 'Mechanic Workbench',
        groups = { 'dreamworks' },
        reqDuty = true,
        items = {
            {
                name = 'repair_part_electronics',
                ingredients = {
                    electronic_parts = 5,
                    plastic = 4,
                    rubber = 1,
                    copperwire = 8,
                },
                duration = 3500,
                count = 10,
            },
            {
                name = 'repair_part_axle',
                ingredients = {
                    ironbar = 4,
                },
                duration = 5000,
                count = 5,
            },
            {
                name = 'repair_part_injectors',
                ingredients = {
                    ironbar = 2,
                    plastic = 2,
                    copperwire = 4,
                    glue = 1,
                },
                duration = 4500,
                count = 20,
            },
            {
                name = 'repair_part_clutch',
                ingredients = {
                    ironbar = 6,
                    rubber = 1,
                },
                duration = 5000,
                count = 8,
            },
            {
                name = 'repair_part_brakes',
                ingredients = {
                    ironbar = 2,
                    glue = 1,
                },
                duration = 4500,
                count = 5,
            },
            {
                name = 'repair_part_transmission',
                ingredients = {
                    ironbar = 3,
                    electronic_parts = 1,
                    plastic = 1,
                },
                duration = 3500,
                count = 2,
            },
            {
                name = 'repair_part_rad',
                ingredients = {
                    ironbar = 3,
                    rubber = 1,
                    glue = 1,
                },
                duration = 2000,
                count = 2,
            },
        },
        zones = {
            {
                label = 'Mechanic Workbench',
                icon = 'fas fa-wrench',
                coords = vec3(-726.39, -1505.64, 5.06),
                size = vec3(5.0, 1.0, 2.6),
                distance = 1.5,
                rotation = 293.0,
            },
        },
    },

    -- Mechanic Crafting Benches End --

    -- Taco Shop Crafting Benches Start --

    { -- Taco Shop Food Prep Table
        name = 'taco-shop-food',
        label = 'Taco Farmer Prep Table',
        items = {
            {
                name = 'beef_taco',
                ingredients = {
                    taco_cheese = 2,
                    taco_beef = 2,
                    taco_tortilla = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'tostada',
                ingredients = {
                    taco_cheese = 2,
                    taco_beef = 2,
                    taco_tortilla = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'quesadilla',
                ingredients = {
                    taco_cheese = 2,
                    taco_chicken = 2,
                    taco_tortilla = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'burrito',
                ingredients = {
                    taco_cheese = 2,
                    taco_chicken = 2,
                    taco_tortilla = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'enchilada',
                ingredients = {
                    taco_cheese = 2,
                    taco_beef = 2,
                    taco_tortilla = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'carne_asada',
                ingredients = {
                    taco_cheese = 2,
                    taco_steak = 4,
                },
                duration = 3000,
                count = 4,
            },
            {
                name = 'torta',
                ingredients = {
                    taco_cheese = 2,
                    taco_chicken = 2,
                    torta_roll = 4,
                },
                duration = 3000,
                count = 4,
            },
        },
        zones = {
            {
                label = 'Taco Farmer Prep Table',
                icon = 'fas fa-utensils',
                coords = vec3(9.81, -1600.51, 29.38),
                size = vec3(1.8, 0.8, 4.0),
                distance = 1.5,
                rotation = 320.0,
            },
        },
    },

    { -- Taco Shop Drinks Fountain
        name = 'taco-shop-drinks',
        label = 'Taco Farmer Fountain Drinks',
        items = {
            {
                name = 'jugo',
                ingredients = {
                    taco_plastic_cups = 4,
                },
                duration = 2000,
                count = 4,
            },
            {
                name = 'taco_soda',
                ingredients = {
                    taco_plastic_cups = 4,
                },
                duration = 2000,
                count = 4,
            },
        },
        zones = {
            {
                label = 'Taco Farmer Fountain Drinks',
                icon = 'fas fa-glass-water',
                coords = vec3(7.5, -1606.48, 29.38),
                size = vec3(0.8, 1.8, 1.4),
                distance = 1.5,
                rotation = 320.0,
            },
        },
    },

    -- Taco Shop Crafting Benches End --

    -- Prison Crafting Benches Start --

    { -- Prison Crafting Low Level
        name = 'prison-crafting-low',
        label = 'Prison Crafting',
        rep = {
            id = 'PrisonSearch',
            level = 0,
        },
        items = {
            {
                name = 'coffee',
                ingredients = {
                    coffee_beans = 5,
                },
                duration = 5000,
                count = 3,
            },
        },
        peds = {
            {
                label = 'Wanna Talk?',
                icon = 'fas fa-toolbox',
                coords = vec4(1625.526, 2578.829, 44.565, 51.167),
                model = 's_m_y_prisoner_01',
                animation = 'WORLD_HUMAN_SMOKING',
            },
        },
    },

    { -- Prison Crafting High Level
        name = 'prison-crafting-high',
        label = 'Prison Crafting',
        rep = {
            id = 'PrisonSearch',
            level = 3,
        },
        items = {
            {
                name = 'WEAPON_SHIV',
                ingredients = {
                    plastic = 25,
                    glue = 25,
                    scrapmetal = 50,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'phone',
                ingredients = {
                    electronic_parts = 25,
                    glue = 25,
                    scrapmetal = 25,
                    plastic = 25,
                },
                duration = 5000,
                count = 1,
            },
            {
                name = 'radio_shitty',
                ingredients = {
                    electronic_parts = 50,
                    glue = 50,
                    scrapmetal = 50,
                    plastic = 50,
                },
                duration = 5000,
                count = 1,
            },
        },
        peds = {
            {
                label = 'Lets Chat',
                icon = 'fas fa-toolbox',
                coords = vec4(1699.579, 2472.416, 44.565, 87.913),
                model = 's_m_y_prisoner_01',
                animation = 'WORLD_HUMAN_SMOKING',
            },
        },
    },

    -- Prison Crafting Benches End --

    -- Business Crafting Benches Start --

    { -- Digital Den Electronics
        name = 'digitalden-regular',
        label = 'Make Electronics',
        groups = { 'digitalden' },
        reqDuty = true,
        items = {
            {
                name = 'radio_shitty',
                ingredients = {
                    electronic_parts = 2,
                    plastic = 5,
                    copperwire = 1,
                    glue = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'phone',
                ingredients = {
                    electronic_parts = 1,
                    plastic = 2,
                    glue = 1,
                },
                duration = 2000,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Make Electronics',
                icon = 'fas fa-microchip',
                coords = vec3(377.86, -820.56, 29.3),
                size = vec3(2.8, 1.4, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Vangelico Jewelry
        name = 'vangelico-jewelry',
        label = 'Jewelry Crafting',
        groups = { 'vangelico' },
        reqDuty = true,
        items = {
            {
                name = 'mint_mate_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_2',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'gotti_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'uwu_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 1,
                    opal = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pixels_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    megaphone = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'frosty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'milk_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'saint_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bobs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'lala_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    emerald = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rooks_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ferrari_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dynasty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oni_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snowboiz_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_3',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'boo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'krazed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snow_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rush_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'meg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'britton_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 30,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bigpoppa_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'skull_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pimpdaddy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'richardson_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'king_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unicorn_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unity_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pizzathis_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    citrine = 4,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ottos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'duck_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 2,
                    citrine = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dani_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'armytags_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    sapphire = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'donut_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mustard_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pandanoodle_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'famli_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pgs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bdragon_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'doublecup_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'axel_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sage_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fredo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hajaar_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diablos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ninezero_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'otf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nolan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'eb13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'tracy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oggramps_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'cloud9_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dex_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queen_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'takia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nines_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'vell_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'jrawefg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bco_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'paletotuner_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'illuminati_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'produce_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 5,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bandits_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mafia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'one41_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'summer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'esb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'shlevin_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneybag_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bluediamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'wolfring_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'smiley_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sbc_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fafo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'weed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queenies_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hbdatsme_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dagoat_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'billyhale_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ten13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'turtles_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mostwanted_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'spencer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'santamuerte_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    amethyst = 4,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'egan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneymind_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Jewelry Crafting',
                icon = 'fas fa-gem',
                coords = vec3(-383.27, 6045.62, 31.51),
                size = vec3(1.2, 0.65, 1.8),
                distance = 1.5,
                rotation = 315.0,
            },
        },
    },

    { -- The Jeweled Dragon (jewel)
        name = 'jewel-jewelry',
        label = 'Jewelry Crafting',
        groups = { 'jewel' },
        reqDuty = true,
        items = {
            {
                name = 'mint_mate_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_2',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'gotti_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'uwu_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 1,
                    opal = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pixels_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    megaphone = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'frosty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'milk_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'saint_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bobs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'lala_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    emerald = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rooks_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ferrari_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dynasty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oni_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snowboiz_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_3',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'boo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'krazed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snow_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rush_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'meg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'britton_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 30,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bigpoppa_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'skull_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pimpdaddy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'richardson_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'king_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unicorn_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unity_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pizzathis_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    citrine = 4,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ottos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'duck_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 2,
                    citrine = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dani_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'armytags_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    sapphire = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'donut_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mustard_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pandanoodle_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'famli_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pgs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bdragon_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'doublecup_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'axel_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sage_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fredo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hajaar_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diablos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ninezero_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'otf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nolan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'eb13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'tracy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oggramps_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'cloud9_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dex_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queen_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'takia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nines_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'vell_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'jrawefg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bco_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'paletotuner_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'illuminati_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'produce_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 5,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bandits_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mafia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'one41_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'summer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'esb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'shlevin_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneybag_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bluediamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'wolfring_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'smiley_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sbc_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fafo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'weed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queenies_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hbdatsme_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dagoat_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'billyhale_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ten13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'turtles_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mostwanted_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'spencer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'santamuerte_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    amethyst = 4,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'egan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneymind_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Jewelry Crafting',
                icon = 'fas fa-gem',
                coords = vec3(-712.705, -895.634, 23.795),
                size = vec3(1.0, 2.0, 2.0),
                distance = 1.5,
                rotation = 90.0,
            },
        },
    },

    { -- San Andreas Gallery of Modern Art (sagma)
        name = 'sagma-jewelry',
        label = 'Jewelry Crafting',
        groups = { 'sagma' },
        reqDuty = true,
        items = {
            {
                name = 'rlg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 2,
                    ruby = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'lss_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pepega_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 2,
                    amethyst = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'lust_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 1,
                    amethyst = 1,
                    sapphire = 1,
                    opal = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 2,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_2',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 2,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snow_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 10,
                    diamond = 2,
                    opal = 2,
                },
                duration = 6500,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Jewelry Crafting',
                icon = 'fas fa-gem',
                coords = vec3(-421.99, 30.28, 46.23),
                size = vec3(1.0, 2.0, 2.6),
                distance = 1.5,
                rotation = 310.0,
            },
        },
    },

    { -- Vangelico Grapeseed Jewelry (vangelico_grapeseed)
        name = 'vangelico-grapeseed-jewelry',
        label = 'Jewelry Crafting',
        groups = { 'vangelico_grapeseed' },
        reqDuty = true,
        items = {
            {
                name = 'mint_mate_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_2',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'gotti_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'uwu_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 1,
                    opal = 2,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pixels_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    megaphone = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'frosty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'milk_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'saint_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bobs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'lala_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    emerald = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rooks_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ferrari_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dynasty_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oni_chain',
                ingredients = {
                    goldbar = 15,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snowboiz_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mint_mate_chain_3',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'boo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'krazed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'snow_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'rush_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'meg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'britton_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 30,
                    diamond = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ssf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bigpoppa_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 2,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'skull_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pimpdaddy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'richardson_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'king_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unicorn_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'unity_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pizzathis_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    citrine = 4,
                    opal = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ottos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'duck_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 2,
                    citrine = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dani_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'armytags_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    sapphire = 1,
                    citrine = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'donut_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mustard_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pandanoodle_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'famli_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'pgs_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bdragon_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'doublecup_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 4,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'axel_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                    opal = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sage_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 4,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fredo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    citrine = 4,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hajaar_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'diablos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ninezero_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'otf_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nolan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'olivia2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nos_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'eb13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    citrine = 5,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'tracy_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'oggramps_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'cloud9_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dex_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queen_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'takia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    amethyst = 3,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'nines_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'vell_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    emerald = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'jrawefg_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bco_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'paletotuner_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'illuminati_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    sapphire = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'produce_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    opal = 5,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bandits_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    amethyst = 3,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mafia_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'one41_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    diamond = 1,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'summer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    ruby = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'esb_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'shlevin_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneybag_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'bluediamond_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'wolfring_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'smiley_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'him2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'sbc_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    amethyst = 3,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'fafo_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'weed_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    emerald = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'queenies_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'hbdatsme_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    ruby = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'dagoat_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'billyhale_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'ten13_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'deathrow2_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'turtles_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    ruby = 1,
                    diamond = 1,
                    sapphire = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'mostwanted_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'spencer_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    sapphire = 1,
                    diamond = 1,
                    opal = 5,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'santamuerte_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    amethyst = 4,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'egan_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    opal = 5,
                    diamond = 2,
                },
                duration = 6500,
                count = 1,
            },
            {
                name = 'moneymind_chain',
                ingredients = {
                    goldbar = 10,
                    silverbar = 20,
                    emerald = 1,
                    ruby = 1,
                    diamond = 1,
                },
                duration = 6500,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Jewelry Crafting',
                icon = 'fas fa-gem',
                coords = vec3(1652.22, 4880.69, 42.16),
                size = vec3(0.6, 1.2, 6.0),
                distance = 1.5,
                rotation = 8.0,
            },
        },
    },

    -- { -- Pepega Pawn Electronics
    --     name = 'pepega_pawn-electronics',
    --     label = 'Make Electronics',
    --     groups = { 'pepega_pawn' },
    --     reqDuty = true,
    --     items = {
    --         {
    --             name = 'radio_shitty',
    --             ingredients = {
    --                 electronic_parts = 2,
    --                 plastic = 5,
    --                 copperwire = 1,
    --                 glue = 2,
    --             },
    --             duration = 6500,
    --             count = 1,
    --         },
    --         {
    --             name = 'phone',
    --             ingredients = {
    --                 electronic_parts = 1,
    --                 plastic = 2,
    --                 glue = 1,
    --             },
    --             duration = 2000,
    --             count = 1,
    --         },
    --     },
    --     zones = {
    --         {
    --             label = 'Make Electronics',
    --             icon = 'fas fa-microchip',
    --             coords = vec3(377.86, -820.56, 29.3),
    --             size = vec3(2.8, 1.4, 1.2),
    --             distance = 1.5,
    --             rotation = 0.0,
    --         },
    --     },
    -- },

    -- { -- Garcon Pawn Electronics
    --     name = 'garcon_pawn-electronics',
    --     label = 'Make Electronics',
    --     groups = { 'garcon_pawn' },
    --     reqDuty = true,
    --     items = {
    --         {
    --             name = 'radio_shitty',
    --             ingredients = {
    --                 electronic_parts = 2,
    --                 plastic = 5,
    --                 copperwire = 1,
    --                 glue = 2,
    --             },
    --             duration = 6500,
    --             count = 1,
    --         },
    --         {
    --             name = 'phone',
    --             ingredients = {
    --                 electronic_parts = 1,
    --                 plastic = 2,
    --                 glue = 1,
    --             },
    --             duration = 2000,
    --             count = 1,
    --         },
    --     },
    --     zones = {
    --         {
    --             label = 'Make Electronics',
    --             icon = 'fas fa-microchip',
    --             coords = vec3(377.86, -820.56, 29.3),
    --             size = vec3(2.8, 1.4, 1.2),
    --             distance = 1.5,
    --             rotation = 0.0,
    --         },
    --     },
    -- },

    -- { -- SecuroServ Electronics
    --     name = 'securoserv-electronics',
    --     label = 'Make Electronics',
    --     groups = { 'securoserv' },
    --     reqDuty = true,
    --     items = {
    --         {
    --             name = 'radio_shitty',
    --             ingredients = {
    --                 electronic_parts = 2,
    --                 plastic = 5,
    --                 copperwire = 1,
    --                 glue = 2,
    --             },
    --             duration = 6500,
    --             count = 1,
    --         },
    --         {
    --             name = 'phone',
    --             ingredients = {
    --                 electronic_parts = 1,
    --                 plastic = 2,
    --                 glue = 1,
    --             },
    --             duration = 2000,
    --             count = 1,
    --         },
    --     },
    --     zones = {
    --         {
    --             label = 'Make Electronics',
    --             icon = 'fas fa-microchip',
    --             coords = vec3(377.86, -820.56, 29.3),
    --             size = vec3(2.8, 1.4, 1.2),
    --             distance = 1.5,
    --             rotation = 0.0,
    --         },
    --     },
    -- },

    -- Business Crafting Benches End --

    -- Restaurant Crafting Benches --

    { -- Burger Shot Drinks & Ice Cream
        name = 'burgershot-drinks',
        label = 'Drinks & Ice Cream',
        groups = { 'burgershot' },
        reqDuty = true,
        items = {
            {
                name = 'burgershot_drink',
                ingredients = {
                    burgershot_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'orangotang_icecream',
                ingredients = {
                    milk_can = 3,
                    sugar = 1,
                    orange = 10,
                },
                duration = 2500,
                count = 10,
            },
            {
                name = 'meteorite_icecream',
                ingredients = {
                    milk_can = 3,
                    sugar = 1,
                    chocolate_bar = 3,
                },
                duration = 2500,
                count = 10,
            },
            {
                name = 'mocha_shake',
                ingredients = {
                    plastic_cup = 1,
                    milk_can = 3,
                    chocolate_bar = 1,
                    coffee_beans = 3,
                },
                duration = 2500,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Drinks & Ice Cream',
                icon = 'fas fa-cup-straw-swoosh',
                coords = vec3(-1191.52, -897.64, 13.8),
                size = vec3(2.6, 0.6, 1.2),
                distance = 1.5,
                rotation = 35.0,
            },
        },
    },

    { -- Burger Shot Drinks & Ice Cream (Drive Thru)
        name = 'burgershot-drinks-drivethru',
        label = 'Drinks & Ice Cream',
        groups = { 'burgershot' },
        reqDuty = true,
        items = {
            {
                name = 'burgershot_drink',
                ingredients = {
                    burgershot_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'orangotang_icecream',
                ingredients = {
                    milk_can = 3,
                    sugar = 1,
                    orange = 10,
                },
                duration = 2500,
                count = 10,
            },
            {
                name = 'meteorite_icecream',
                ingredients = {
                    milk_can = 3,
                    sugar = 1,
                    chocolate_bar = 3,
                },
                duration = 2500,
                count = 10,
            },
            {
                name = 'mocha_shake',
                ingredients = {
                    plastic_cup = 1,
                    milk_can = 3,
                    chocolate_bar = 1,
                    coffee_beans = 3,
                },
                duration = 2500,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Drinks & Ice Cream',
                icon = 'fas fa-cup-straw-swoosh',
                coords = vec3(-1191.12, -905.38, 13.8),
                size = vec3(1.4, 1.0, 1.2),
                distance = 1.5,
                rotation = 305.0,
            },
        },
    },

    { -- Burger Shot Food
        name = 'burgershot-food',
        label = 'Food',
        groups = { 'burgershot' },
        reqDuty = true,
        items = {
            {
                name = 'patty',
                ingredients = {
                    unk_meat = 10,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'pickle',
                ingredients = {
                    cucumber = 15,
                },
                duration = 2000,
                count = 10,
            },
            {
                name = 'burger',
                ingredients = {
                    bun = 4,
                    patty = 4,
                    lettuce = 3,
                    pickle = 6,
                    tomato = 10,
                    cheese = 5,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'double_shot_burger',
                ingredients = {
                    bun = 6,
                    patty = 6,
                    lettuce = 6,
                    pickle = 6,
                    tomato = 10,
                    cheese = 5,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'tacos',
                ingredients = {
                    dough = 1,
                    lettuce = 2,
                    tomato = 4,
                    beef = 2,
                },
                duration = 2000,
                count = 3,
            },
            {
                name = 'heartstopper',
                ingredients = {
                    bun = 2,
                    patty = 3,
                    lettuce = 2,
                    pickle = 3,
                    tomato = 4,
                    cheese = 5,
                },
                duration = 2000,
                count = 1,
            },
            {
                name = 'the_simply_burger',
                ingredients = {
                    bun = 5,
                    patty = 5,
                    lettuce = 12,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'prickly_burger',
                ingredients = {
                    bun = 3,
                    patty = 3,
                    lettuce = 9,
                    chicken = 9,
                    cheese = 3,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'chicken_wrap',
                ingredients = {
                    dough = 1,
                    lettuce = 1,
                    cucumber = 3,
                    tomato = 5,
                    cheese = 1,
                    chicken = 1,
                },
                duration = 2000,
                count = 3,
            },
            {
                name = 'goat_cheese_wrap',
                ingredients = {
                    dough = 1,
                    lettuce = 1,
                    cucumber = 2,
                    tomato = 3,
                    cheese = 5,
                },
                duration = 2000,
                count = 3,
            },
            {
                name = 'burgershot_fries',
                ingredients = {
                    potato = 10,
                },
                duration = 2000,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Food',
                icon = 'fas fa-burger-fries',
                coords = vec3(-1187.16, -900.2, 13.8),
                size = vec3(1.8, 3.4, 1.2),
                distance = 1.5,
                rotation = 34.0,
            },
        },
    },

    { -- Bean Machine Food
        name = 'beanmachine-food',
        label = 'Food',
        groups = { 'beanmachine' },
        reqDuty = true,
        items = {
            {
                name = 'carrot_cake',
                ingredients = {
                    icing = 1,
                    sugar = 3,
                    dough = 1,
                    milk_can = 1,
                },
                duration = 5000,
                count = 4,
            },
            {
                name = 'blueberry_muffin',
                ingredients = {
                    sugar = 3,
                    dough = 1,
                    milk_can = 1,
                },
                duration = 5000,
                count = 6,
            },
            {
                name = 'chocy_muff',
                ingredients = {
                    sugar = 4,
                    dough = 1,
                    milk_can = 1,
                },
                duration = 5000,
                count = 6,
            },
            {
                name = 'million_shrtbread',
                ingredients = {
                    sugar = 4,
                    dough = 1,
                    milk_can = 1,
                },
                duration = 5000,
                count = 10,
            },
        },
        zones = {
            {
                label = 'Food',
                icon = 'fas fa-sandwich',
                coords = vec3(121.6, -1038.57, 29.28),
                size = vec3(1.8, 0.8, 1.2),
                distance = 1.5,
                rotation = 340.0,
            },
        },
    },

    { -- Bean Machine Coffee
        name = 'beanmachine-coffee',
        label = 'Coffee Machine',
        groups = { 'beanmachine' },
        reqDuty = true,
        items = {
            {
                name = 'beanmachine',
                ingredients = {
                    plastic_cup = 1,
                    coffee_beans = 3,
                    milk_can = 1,
                },
                duration = 5000,
                count = 3,
            },
            {
                name = 'expresso',
                ingredients = {
                    coffee_beans = 5,
                },
                duration = 5000,
                count = 3,
            },
        },
        zones = {
            {
                label = 'Coffee Machine',
                icon = 'fas fa-coffee-pot',
                coords = vec3(124.04, -1039.23, 29.28),
                size = vec3(6.2, 1.0, 1.2),
                distance = 1.5,
                rotation = 340.0,
            },
        },
    },

    { -- Bean Machine Cold Drinks
        name = 'beanmachine-colddrinks',
        label = 'Drinks Machine',
        groups = { 'beanmachine' },
        reqDuty = true,
        items = {
            {
                name = 'smoothie_orange',
                ingredients = {
                    plastic_cup = 1,
                    orange = 3,
                    sugar = 1,
                },
                duration = 5000,
                count = 3,
            },
            {
                name = 'smoothie_veg',
                ingredients = {
                    plastic_cup = 1,
                    lettuce = 4,
                    peas = 10,
                    cucumber = 4,
                    sugar = 1,
                },
                duration = 5000,
                count = 3,
            },
        },
        zones = {
            {
                label = 'Drinks Machine',
                icon = 'fas fa-cup-straw-swoosh',
                coords = vec3(123.46, -1042.84, 29.28),
                size = vec3(0.8, 1.8, 1.2),
                distance = 1.5,
                rotation = 340.0,
            },
        },
    },

    { -- Pizza This Drinks
        name = 'pizza_this-drinks',
        label = 'Drinks',
        groups = { 'pizza_this' },
        reqDuty = true,
        items = {
            {
                name = 'glass_cock',
                ingredients = {
                    plastic_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'lemonade',
                ingredients = {
                    plastic_cup = 1,
                    orange = 3,
                },
                duration = 0,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Drinks',
                icon = 'fas fa-cup-straw-swoosh',
                coords = vec3(810.74, -764.46, 26.78),
                size = vec3(1.0, 2.0, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Pizza This Drinks Bar
        name = 'pizza_this-drinksbar',
        label = 'Drinks',
        groups = { 'pizza_this' },
        reqDuty = true,
        items = {
            {
                name = 'glass_cock',
                ingredients = {
                    plastic_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'lemonade',
                ingredients = {
                    plastic_cup = 1,
                    orange = 3,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'vodka_shot',
                ingredients = {
                    plastic_cup = 1,
                    vodka = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'whiskey_glass',
                ingredients = {
                    plastic_cup = 1,
                    whiskey = 1,
                },
                duration = 0,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Drinks',
                icon = 'fas fa-cup-straw-swoosh',
                coords = vec3(814.05, -749.35, 26.78),
                size = vec3(1.0, 2.2, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Pizza This Pizza Oven
        name = 'pizza_this-pizza',
        label = 'Pizza Oven',
        groups = { 'pizza_this' },
        reqDuty = true,
        items = {
            {
                name = 'pepperoni_pizza',
                ingredients = {
                    dough = 1,
                    tomato = 5,
                    unk_meat = 5,
                    cheese = 1,
                },
                duration = 3000,
                count = 1,
            },
            {
                name = 'margherita_pizza',
                ingredients = {
                    dough = 1,
                    tomato = 5,
                    cheese = 2,
                },
                duration = 3000,
                count = 1,
            },
            {
                name = 'san_manzano_pizza',
                ingredients = {
                    dough = 1,
                    tomato = 5,
                    lettuce = 4,
                    cheese = 2,
                },
                duration = 3000,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Pizza Oven',
                icon = 'fas fa-pizza',
                coords = vec3(813.97, -752.85, 26.78),
                size = vec3(2.0, 2.0, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Pizza This Food
        name = 'pizza_this-food',
        label = 'Food',
        groups = { 'pizza_this' },
        reqDuty = true,
        items = {
            {
                name = 'pasta_fresca',
                ingredients = {
                    dough = 2,
                    tomato = 6,
                    lettuce = 4,
                    cheese = 4,
                },
                duration = 4000,
                count = 4,
            },
            {
                name = 'pesto_cavatappi',
                ingredients = {
                    dough = 2,
                    cheese = 4,
                    milk_can = 1,
                },
                duration = 4000,
                count = 4,
            },
            {
                name = 'spag_bowl',
                ingredients = {
                    dough = 1,
                    cheese = 4,
                    tomato = 6,
                    beef = 3,
                },
                duration = 4000,
                count = 4,
            },
            {
                name = 'chips',
                ingredients = {
                    potato = 6,
                },
                duration = 3000,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Food',
                icon = 'fas fa-pizza',
                coords = vec3(808.69, -761.17, 26.78),
                size = vec3(3.0, 2.2, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- Vanilla Unicorn Bar
        name = 'unicorn-bar',
        label = 'Bar',
        groups = { 'unicorn' },
        reqDuty = true,
        items = {
            {
                name = 'raspberry_mimosa',
                ingredients = {
                    plastic_cup = 1,
                    champagne = 1,
                    orange = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'pina_colada',
                ingredients = {
                    plastic_cup = 1,
                    rum = 1,
                    coconut = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'bloody_mary',
                ingredients = {
                    plastic_cup = 1,
                    vodka = 1,
                    tomato = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'vodka_shot',
                ingredients = {
                    plastic_cup = 1,
                    vodka = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'whiskey_glass',
                ingredients = {
                    plastic_cup = 1,
                    whiskey = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'jaeger_bomb',
                ingredients = {
                    plastic_cup = 1,
                    jaeger = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'beer',
                ingredients = {
                    plastic_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'glass_cock',
                ingredients = {
                    plastic_cup = 1,
                },
                duration = 0,
                count = 1,
            },
            {
                name = 'lemonade',
                ingredients = {
                    plastic_cup = 1,
                    orange = 3,
                },
                duration = 0,
                count = 1,
            },
        },
        zones = {
            {
                label = 'Bar',
                icon = 'fas fa-martini-glass-citrus',
                coords = vec3(131.03, -1282.28, 29.27),
                size = vec3(2.2, 1.2, 1.2),
                distance = 1.5,
                rotation = 30.0,
            },
        },
    },

    { -- UwU Cafe Hot Drinks
        name = 'uwu-drinks',
        label = 'Hot Drinks',
        groups = { 'uwu' },
        reqDuty = true,
        items = {
            {
                name = 'iced_coffee',
                ingredients = {
                    plastic_cup = 1,
                    coffee_beans = 1,
                    milk_can = 1,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'matcha_latte',
                ingredients = {
                    plastic_cup = 1,
                    tea_leaf = 2,
                    milk_can = 1,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'pumpkinspiced_latte',
                ingredients = {
                    plastic_cup = 1,
                    coffee_beans = 1,
                    milk_can = 1,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'cat_tuccino',
                ingredients = {
                    plastic_cup = 1,
                    coffee_beans = 3,
                    milk_can = 1,
                },
                duration = 3000,
                count = 5,
            },
            {
                name = 'booba_tea',
                ingredients = {
                    plastic_cup = 1,
                    tea_leaf = 2,
                },
                duration = 2000,
                count = 5,
            },
            {
                name = 'green_tea',
                ingredients = {
                    plastic_cup = 1,
                    tea_leaf = 4,
                },
                duration = 6000,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Hot Drinks',
                icon = 'fas fa-mug-hot',
                coords = vec3(-586.98, -1061.91, 22.34),
                size = vec3(0.8, 0.8, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- UwU Cafe Oven
        name = 'uwu-oven',
        label = 'Oven',
        groups = { 'uwu' },
        reqDuty = true,
        items = {
            {
                name = 'homemade_cookie',
                ingredients = {
                    dough = 1,
                    sugar = 2,
                    icing = 1,
                },
                duration = 2000,
                count = 12,
            },
            {
                name = 'choclate_pancakes',
                ingredients = {
                    milk_can = 3,
                    sugar = 3,
                },
                duration = 2000,
                count = 6,
            },
            {
                name = 'apple_crumble',
                ingredients = {
                    dough = 3,
                    sugar = 6,
                },
                duration = 2000,
                count = 3,
            },
            {
                name = 'cat_donut',
                ingredients = {
                    dough = 2,
                    sugar = 2,
                    icing = 2,
                },
                duration = 2000,
                count = 6,
            },
            {
                name = 'cat_cupcake',
                ingredients = {
                    dough = 2,
                    sugar = 2,
                    icing = 4,
                },
                duration = 2000,
                count = 6,
            },
        },
        zones = {
            {
                label = 'Oven',
                icon = 'fas fa-cupcake',
                coords = vec3(-590.9, -1059.56, 22.34),
                size = vec3(1.6, 1.0, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- UwU Cafe Food
        name = 'uwu-food',
        label = 'Food',
        groups = { 'uwu' },
        reqDuty = true,
        items = {
            {
                name = 'frozen_yoghurt',
                ingredients = {
                    plastic_cup = 1,
                    milk_can = 1,
                    sugar = 1,
                },
                duration = 2000,
                count = 4,
            },
            {
                name = 'fruit_explosion',
                ingredients = {
                    plastic_cup = 1,
                    milk_can = 1,
                    sugar = 8,
                    orange = 10,
                },
                duration = 2000,
                count = 4,
            },
            {
                name = 'fresh_lemonade',
                ingredients = {
                    plastic_cup = 5,
                    orange = 15,
                },
                duration = 2000,
                count = 5,
            },
        },
        zones = {
            {
                label = 'Food',
                icon = 'fas fa-sandwich',
                coords = vec3(-591.13, -1063.23, 22.36),
                size = vec3(2.6, 0.8, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    { -- UwU Cafe Arts & Crafts
        name = 'uwu-other',
        label = 'Arts & Crafts',
        groups = { 'uwu' },
        reqDuty = true,
        items = {
            {
                name = 'uwu_prize_box',
                ingredients = {
                    plastic = 15,
                    cloth = 5,
                },
                duration = 1000,
                count = 3,
            },
        },
        zones = {
            {
                label = 'Arts & Crafts',
                icon = 'fas fa-paintbrush-pencil',
                coords = vec3(-596.06, -1052.47, 22.34),
                size = vec3(1.0, 2.0, 1.2),
                distance = 1.5,
                rotation = 0.0,
            },
        },
    },

    -- Restaurant Crafting Benches End --
}
