--[[
    ITEMS DATABASE -- Item Options Reference
    You can refer to this: https://coxdocs.dev/ox_inventory/Guides/creatingItems
    But that won't have all the params that this inventory includes

    ===========================================
    BASIC PROPERTIES
    ===========================================
    label: string                    -- Required: Item display name
    weight?: number                  -- Weight in grams
    stack?: boolean                  -- Can stack (default: true)
    degrade?: number                 -- Degrade time in minutes
    decay?: boolean                  -- Delete when durability reaches 0
    close?: boolean                  -- Close inventory on use (default: true)
    description?: string             -- Tooltip description
    consume?: number                 -- Amount consumed on use (default: 1)
    allowArmed?: boolean            -- Allow use while armed (default: false)
    server?: table                   -- Server-side properties
    client?: table                   -- Client-side properties
    buttons?: table                  -- Custom context menu buttons
    rarity?: number                  -- Item rarity (0-7)
    drugState?: table                -- Drug state configuration
        type: string                 -- Drug state type
        duration: number            -- Duration in seconds
    energyModifier?: table          -- Energy modifier configuration
        modifier: string             -- Energy modifier type
        duration: number             -- Duration in seconds
        cooldown: number             -- Cooldown in seconds
        skipScreenEffects: boolean   -- Skip screen effects
    container?: table               -- Container configuration
        slots: number               -- Number of slots
        maxWeight: number            -- Maximum weight in grams
        whitelist?: table<string, true> | string[]          -- A table of item names that are allowed in the container. If not provided, all items are allowed except those blacklisted.
        blacklist?: table<string, true> | string[]          -- A table of item names that are not allowed in the container. If not provided, no items are blacklisted unless whitelist is provided.
        items?: table                       -- A table of items to add to the container.
            name: string                    -- Item name
            count: number                   -- Item count

    ===========================================
    SERVER DATA PROPERTIES
    ===========================================
    export?: string                  -- Export function to call
    event?: string                   -- Event to trigger
    status?: table                   -- Adjust status values (hunger, thirst, stress, etc.)

    ===========================================
    CLIENT DATA PROPERTIES
    ===========================================
    export?: string                  -- Export function to call
    event?: string                   -- Event to trigger
    status?: table                   -- Adjust status values
    anim?: table                     -- Animation during use
        dict: string                 -- Animation dictionary
        clip: string                 -- Animation clip
    prop?: table                     -- Attached prop during use
        model: string or hash        -- Prop model
        pos: table (x, y, z)         -- Position
        rot: table (x, y, z)        -- Rotation
        bone?: number                -- Bone to attach to
        rotOrder?: number            -- Rotation order
    disable?: table                  -- Actions to disable during use
        move?: boolean               -- Disable movement
        car?: boolean                -- Disable car actions
        combat?: boolean             -- Disable combat
        mouse?: boolean              -- Disable mouse
        sprint?: boolean             -- Disable sprint
    usetime?: number                -- Use time in milliseconds
    cancel?: boolean                 -- Allow cancel during use
    add?: function(total: number)    -- Function when receiving item
    remove?: function(total: number) -- Function when removing item

    ===========================================
    BUTTONS (CONTEXT MENU)
    ===========================================
    label: string                    -- Button text
    action: function(slot: number)   -- Callback when clicked

    ===========================================
    CONSUME VALUES
    ===========================================
    consume = 1        -- Remove 1 item on use
    consume = 2        -- Remove 2 items on use
    consume = 0.2      -- Remove 20% durability on use
    consume = 0.5      -- Remove 50% durability on use

    ===========================================
    STATUS EFFECTS
    ===========================================
    PLAYER_HUNGER     -- Hunger level
    PLAYER_THIRST     -- Thirst level
    PLAYER_STRESS     -- Stress level
    Player_DRUNK      -- Drunk level

    ===========================================
    RARITY SYSTEM
    ===========================================

    rarity can also be passed as item metadata, if you'd like to give a unique item a rarity other than the default

    0 = nothing (common)
    1 = common
    2 = uncommon
    3 = rare
    4 = epic
    5 = labor objective
    6 = legendary
    7 = exotic
]]

return {
    ["money"] = {
        label = "Money",
    },
    ["evidence-paint"] = {
        label = "Paint Fragment",
        weight = 250.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["evidence-projectile"] = {
        label = "Bullet Projectile",
        description = "Can be matched to the weapon it was fired from",
        weight = 250.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["evidence-casing"] = {
        label = "Bullet Casing",
        description = "Identifies the type of ammo used",
        weight = 250.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["evidence-dna"] = {
        label = "DNA Sample",
        weight = 250.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["schematic_weapon_flashlight"] = {
        label = "Schematic: Weapon Flashlight",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_pistol_ext_mag"] = {
        label = "Schematic: Pistol Ext. Mag",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_smg_ext_mag"] = {
        label = "Schematic: SMG Ext. Mag",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_rifle_ext_mag"] = {
        label = "Schematic: AR Ext. Mag",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_drum_mag"] = {
        label = "Schematic: Drum Mag",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_box_mag"] = {
        label = "Schematic: Box Mag",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_pistol_suppressor"] = {
        label = "Schematic: Pistol Suppressor",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_smg_suppressor"] = {
        label = "Schematic: SMG Suppressor",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_ar_suppressor"] = {
        label = "Schematic: AR Suppressor",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_scope_holo"] = {
        label = "Schematic: Holographic Sight",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_scope_reddot"] = {
        label = "Schematic: Red Dot Sight",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_scope_small"] = {
        label = "Schematic: Small Scope",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_scope_med"] = {
        label = "Schematic: Medium Scope",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_scope_lrg"] = {
        label = "Schematic: Large Scope",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["electronics_kit"] = {
        label = "Electronics Kit",
        weight = 500.0,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["adv_electronics_kit"] = {
        label = "Hacking Device",
        description = "<i>Marked For Police Seizure</i>",
        weight = 500.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["drill"] = {
        label = "Drill",
        weight = 500.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["safecrack_kit"] = {
        label = "Safe Cracking Kit",
        description = "<i>Marked For Police Seizure</i>",
        weight = 500.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["hack_usb"] = {
        label = "Easy Hacker 3000",
        weight = 1000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["sequencer"] = {
        label = "Yellow Keypad Sequencer",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["green_sequencer"] = {
        label = "Green Keypad Sequencer",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["blue_sequencer"] = {
        label = "Blue Keypad Sequencer",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["red_sequencer"] = {
        label = "Red Keypad Sequencer",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["thermite"] = {
        label = "Thermite Charge",
        weight = 2500.0,
        degrade = 5184000,
        client = {},
        server = {}
    },
    ["bobcat_charge"] = {
        label = "Breach Charge",
        description = "Kinda like thermite, but more ... explosive",
        weight = 3000,
        degrade = 3600,
        rarity = 3,
        client = {},
        server = {}
    },
    ["green_dongle"] = {
        label = "USB Drive (Green)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 2,
        client = {},
        server = {}
    },
    ["blue_dongle"] = {
        label = "USB Drive (Blue)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1814400,
        rarity = 3,
        client = {},
        server = {}
    },
    ["purple_dongle"] = {
        label = "USB Drive (Purple)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 2,
        client = {},
        server = {}
    },
    ["red_dongle"] = {
        label = "USB Drive (Red)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["yellow_dongle"] = {
        label = "USB Drive (Yellow)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 259200,
        rarity = 4,
        client = {},
        server = {}
    },
    ["green_laptop"] = {
        label = "Laptop (Green)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 2,
        client = {},
        server = {}
    },
    ["blue_laptop"] = {
        label = "Laptop (Blue)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 3,
        client = {},
        server = {}
    },
    ["purple_laptop"] = {
        label = "Laptop (Purple)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 1209600,
        rarity = 3,
        client = {},
        server = {}
    },
    ["red_laptop"] = {
        label = "Laptop (Red)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 4,
        client = {},
        server = {}
    },
    ["yellow_laptop"] = {
        label = "Laptop (Yellow)",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 604800,
        rarity = 4,
        client = {},
        server = {}
    },
    ["paleto_access_codes"] = {
        label = "Access Codes",
        description = "<i>Marked For Police Seizure</i>",
        weight = 1000,
        degrade = 14400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["boosting_tracking_disabler"] = {
        label = "Tracker Hacker Device",
        description = "<i>Marked For Police Seizure</i>",
        weight = 500.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["prison_food"] = {
        label = "Prison Food",
        weight = 1000,
        degrade = 86400,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_sandwich_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["prison_drink"] = {
        label = "Prison Drink",
        weight = 500.0,
        degrade = 86400,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_THIRST = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fruitpunchslushie"] = {
        label = "Prison Slushi",
        weight = 500.0,
        degrade = 10800,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_THIRST = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["beatdownberryrazz"] = {
        label = "Beatdown BerryRazz",
        weight = 500.0,
        degrade = 10800,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_THIRST = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sign_dontblock"] = {
        label = "Do Not Block Sign",
        description = "Where did this come from?",
        weight = 1000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_leftturn"] = {
        label = "Left Turn Sign",
        description = "Where did this come from?",
        weight = 1000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_nopark"] = {
        label = "No Parking Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_notresspass"] = {
        label = "No Tresspassing Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_rightturn"] = {
        label = "Right Turn Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_stop"] = {
        label = "Stop Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_uturn"] = {
        label = "U-Turn Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_walkingman"] = {
        label = "Walking Man Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sign_yield"] = {
        label = "Yield Sign",
        description = "Where did this come from?",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["vu_rods"] = {
        label = "Cheese Rods",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["vu_wings"] = {
        label = "Fried Nubs",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["vu_thangs"] = {
        label = "Fried Thangs",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["million_shrtbread"] = {
        label = "Millionare Shortbread",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 5000,
            status = { Add = { PLAYER_HUNGER = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["carrot_cake"] = {
        label = "Carrot Cake",
        description = "A Lovely Comforting Cake",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["smoothie_veg"] = {
        label = "Veg Smoothie",
        description = "A Bean Machine Exclusive",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.2,
            duration = 12,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 10, PLAYER_THIRST = 75 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["expresso"] = {
        label = "Espresso",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `bzzz_food_cooffeecup01_a`, pos = vec3(0.14, 0.0, 0.06), rot = vec3(-224.0, -77.0, -132.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["beanmachine"] = {
        label = "The Bean Machine",
        description = "We take beans and put them in machines",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.2,
            duration = 12,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["hornys_cup"] = {
        label = "H Cup",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hornyburger"] = {
        label = "Horny Burger",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["hornys_drink"] = {
        label = "Horny Drink",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["double_horny"] = {
        label = "Double Horny",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["horny_taco"] = {
        label = "Horny Taco",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["hornys_fries"] = {
        label = "Zesty Fries",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["horny_chicken_wrap"] = {
        label = "Horny Wrap",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mocha_shake"] = {
        label = "Mocha Shake",
        description = "Go Crazy",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 10, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["japanese_pan_noodles"] = {
        label = "Japanese Pan Noodles",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["guksu"] = {
        label = "Guksu",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["pad_thai"] = {
        label = "Pad Thai",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["maki_calirolls"] = {
        label = "San Andreas Maki",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["maki_tuna"] = {
        label = "Tuna Rolls",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sashimi_mix"] = {
        label = "Sashimi Mix",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["repairkit"] = {
        label = "Repair Kit",
        description = "Fixes a vehicles engine so it can be driven again.",
        weight = 250.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["repairkitadv"] = {
        label = "Advanced Repair Kit",
        description = "Fixes a vehicles engine and tires so it can be driven again.",
        weight = 500.0,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["carclean"] = {
        label = "Car Cleaning Kit",
        description = "Make your car squeaky clean!",
        weight = 1000.0,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["carpolish"] = {
        label = "Car Polish",
        description = "Stop your car getting dirty!",
        weight = 1000.0,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["carpolish_high"] = {
        label = "Fantastic Car Wax",
        description = "Stop your car getting dirty and keep it sqeaky clean!",
        weight = 1000.0,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["purgecontroller"] = {
        label = "Purge Controller",
        description = "Redefine the look of your purges!",
        weight = 3000.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["camber_controller"] = {
        label = "Camber Controller",
        description = "Stance it up bruh",
        weight = 3000.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["repair_part_electronics"] = {
        label = "Vehicle Electronics",
        description = "Vehicle Electronic Parts",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_axle"] = {
        label = "Axle Parts",
        description = "Vehicle Axle Parts",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_rad"] = {
        label = "Radiator",
        description = "Vehicle Radiator",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_transmission"] = {
        label = "Transmission Parts",
        description = "Vehicle Transmission",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_brakes"] = {
        label = "Brakes",
        description = "Vehicle Brakes",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_clutch"] = {
        label = "Clutch",
        description = "Vehicle Clutch",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_injectors"] = {
        label = "Fuel Injectors",
        description = "Vehicle Fuel Injectors",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["repair_part_rad_hg"] = {
        label = "HG Radiator",
        description = "(High Grade) Vehicle Radiator",
        weight = 0.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["repair_part_transmission_hg"] = {
        label = "HG Transmission Parts",
        description = "(High Grade) Vehicle Transmission Parts",
        weight = 0.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["repair_part_brakes_hg"] = {
        label = "HG Brakes",
        description = "(High Grade) Vehicle Brakes",
        weight = 0.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["repair_part_clutch_hg"] = {
        label = "HG Clutch",
        description = "(High Grade) Vehicle Clutch",
        weight = 0.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["repair_part_injectors_hg"] = {
        label = "HG Fuel Injectors",
        description = "(High Grade) Vehicle Fuel Injectors",
        weight = 0.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["upgrade_turbo"] = {
        label = "Turbo Upgrade",
        description = "Upgrade a Vehicles to a Turbo",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_engine1"] = {
        label = "Engine Upgrade (1)",
        description = "Upgrade a Vehicles Engine to Level 1",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_engine2"] = {
        label = "Engine Upgrade (2)",
        description = "Upgrade a Vehicles Engine to Level 2",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_engine3"] = {
        label = "Engine Upgrade (3)",
        description = "Upgrade a Vehicles Engine to Level 3",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_engine4"] = {
        label = "Engine Upgrade (4)",
        description = "Upgrade a Vehicles Engine to Level 4",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_brakes1"] = {
        label = "Brakes Upgrade (1)",
        description = "Upgrade a Vehicles Brakes to Level 1",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_brakes2"] = {
        label = "Brakes Upgrade (2)",
        description = "Upgrade a Vehicles Brakes to Level 2",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_brakes3"] = {
        label = "Brakes Upgrade (3)",
        description = "Upgrade a Vehicles Brakes to Level 3",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_brakes4"] = {
        label = "Brakes Upgrade (4)",
        description = "Upgrade a Vehicles Brakes to Level 4",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_transmission1"] = {
        label = "Transmission Upgrade (1)",
        description = "Upgrade a Vehicles Transmission to Level 1",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_transmission2"] = {
        label = "Transmission Upgrade (2)",
        description = "Upgrade a Vehicles Transmission to Level 2",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_transmission3"] = {
        label = "Transmission Upgrade (3)",
        description = "Upgrade a Vehicles Transmission to Level 3",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_transmission4"] = {
        label = "Transmission Upgrade (4)",
        description = "Upgrade a Vehicles Transmission to Level 4",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_suspension1"] = {
        label = "Suspension Upgrade (1)",
        description = "Upgrade a Vehicles Suspension to Level 1",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_suspension2"] = {
        label = "Suspension Upgrade (2)",
        description = "Upgrade a Vehicles Suspension to Level 2",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_suspension3"] = {
        label = "Suspension Upgrade (3)",
        description = "Upgrade a Vehicles Suspension to Level 3",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["upgrade_suspension4"] = {
        label = "Suspension Upgrade (4)",
        description = "Upgrade a Vehicles Suspension to Level 4",
        weight = 0.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["harness"] = {
        label = "Vehicle Harness",
        description = "Stop flying to the moon!",
        weight = 150.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["nitrous"] = {
        label = "Nitrous Oxide",
        description = "Copium",
        weight = 3000.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["govid"] = {
        label = "Government ID",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["government_badge"] = {
        label = "Badge",
        description = "Government Issued Badge",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hunting_map_dark"] = {
        label = "Hunting Map (Dark)",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hunting_map_light"] = {
        label = "Hunting Map (Light)",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["rental_papers"] = {
        label = "Rental Papers",
        description = "Documents that prove who rented a vehicle.",
        weight = 1000,
        degrade = 86400,
        client = {},
        server = {}
    },
    ["radio"] = {
        label = "Encrypted Radio",
        description = "Encrypted Communication Device for Emergency Services",
        weight = 1000,
        degrade = 5184000,
        rarity = 2,
        client = {
            add = function(count)
                HandleItemState('RADIO_ENCRYPTED', count, 'radio')
            end,
            remove = function(count)
                HandleItemState('RADIO_ENCRYPTED', count, 'radio')
            end
        },
        server = {}
    },
    ["radio_shitty"] = {
        label = "P6900 Radio",
        description = "High Frequency Used for Short Range Communication",
        weight = 1000,
        degrade = 1814400,
        client = {
            add = function(count)
                HandleItemState('RADIO_CIV', count, 'radio_shitty')
            end,
            remove = function(count)
                HandleItemState('RADIO_CIV', count, 'radio_shitty')
            end
        },
        server = {}
    },
    ["radio_extendo"] = {
        label = "B0085 Radio",
        description = "Used for Slightly Longer Range Communication",
        weight = 1000,
        degrade = 1814400,
        rarity = 2,
        client = {
            add = function(count)
                HandleItemState('RADIO_EXTENDO', count, 'radio_extendo')
            end,
            remove = function(count)
                HandleItemState('RADIO_EXTENDO', count, 'radio_extendo')
            end
        },
        server = {}
    },
    ["phone"] = {
        label = "Phone",
        weight = 1000,
        degrade = 1814400,
        client = {
            export = 'sandbox-phone.TogglePhone'
        },
        server = {}
    },
    ["gps"] = {
        label = "SB NavMaster",
        weight = 1000,
        degrade = 1814400,
        client = {
            add = function(count)
                HandleItemState('GPS', count, 'gps')
            end,
            remove = function(count)
                HandleItemState('GPS', count, 'gps')
            end,
        },
        server = {}
    },
    ["pd_watch"] = {
        label = "PD Watch",
        weight = 1000,
        degrade = 1814400,
        client = {
            add = function(count)
                HandleItemState('PD_WATCH', count, 'pd_watch')
            end,
            remove = function(count)
                HandleItemState('PD_WATCH', count, 'pd_watch')
            end
        },
        server = {}
    },
    ["megaphone"] = {
        label = "Megaphone",
        description = "Yell insults at people but from a longer distance",
        weight = 2000,
        degrade = 1209600,
        rarity = 2,
        client = {
            add = function(count)
                HandleItemState('MEGAPHONE', count, 'megaphone')
            end,
            remove = function(count)
                HandleItemState('MEGAPHONE', count, 'megaphone')
            end
        },
        server = {}
    },
    ["fakeplates"] = {
        label = "License Plates",
        description = "A set of license plates from a vehicle",
        weight = 2000,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["personal_plates"] = {
        label = "Personal Plate",
        description = "Set a personal plate for a vehicle.",
        weight = 500.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["personal_plates_donator"] = {
        label = "Personal Plate",
        description = "Set a personal plate for a vehicle.",
        weight = 500.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["fertilizer_nitrogen"] = {
        label = "Fertilizer (Nitrogen)",
        description = "Nitrogen rich fertilizer improves viability of output when the plant is harvested.",
        weight = 3000,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["fertilizer_phosphorus"] = {
        label = "Fertilizer (Phosphorus)",
        description = "Phosphorus rich fertilizer helps increase plant growth speed.",
        weight = 3000,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["fertilizer_potassium"] = {
        label = "Fertilizer (Potassium)",
        description = "Potassium rich fertilizer helps keep plants hydrated.",
        weight = 3000,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["mask"] = {
        label = "Mask",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hat"] = {
        label = "Hat",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["accessory"] = {
        label = "Accessory",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sombrero"] = {
        label = "Sombrero",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["camping_chair"] = {
        label = "Foldable Chair",
        weight = 2000.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["beanbag"] = {
        label = "A Beanbag",
        description = "So Comfortable",
        weight = 2000.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["paparattos_cigar"] = {
        label = "Tomassi Classico",
        weight = 100.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["cigarette"] = {
        label = "Cigarette",
        weight = 50.0,
        degrade = 864000,
        client = {
            usetime = 8000,
            cancel = false,
            allowArmed = false,
            anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
            prop = { model = `ng_proc_cigarette01a`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = false,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["cigarette_pack"] = {
        label = "Pack of Cigarettes",
        weight = 500.0,
        degrade = 864000,
        container = {
            slots = 1,
            maxWeight = 1000,
            whitelist = {
                'cigarette',
            },
            items = {
                { name = 'cigarette', count = 20 },
            }
        },
        client = {},
        server = {}
    },
    ["armor"] = {
        label = "Body Armor",
        weight = 8000,
        degrade = 604800,
        client = {
            usetime = 5000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = false,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["heavyarmor"] = {
        label = "Heavy Body Armor",
        weight = 8000,
        degrade = 604800,
        rarity = 2,
        client = {
            usetime = 10000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = false,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["pdarmor"] = {
        label = "PD Body Armor",
        weight = 8000,
        degrade = 604800,
        rarity = 3,
        client = {
            usetime = 7500,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = false,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["bowling_ball"] = {
        label = "Bowling Ball",
        weight = 50000.0,
        degrade = nil,
        rarity = 4,
        client = {
            add = function(count)
                HandleItemState('ANIM_bowling_ball', count, 'bowling_ball')
            end,
            remove = function(count)
                HandleItemState('ANIM_bowling_ball', count, 'bowling_ball')
            end
        },
        server = {}
    },
    ["petrock"] = {
        label = "Pet Rock",
        description = "Please take care of me",
        weight = 1000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["vanityitem"] = {
        label = "Vanity Item",
        weight = 10.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["parts_box"] = {
        label = "Scrap Box",
        weight = 10000,
        degrade = 604800,
        rarity = 3,
        client = {
            add = function(count)
                HandleItemState('ANIM_box', count, 'parts_box')
            end,
            remove = function(count)
                HandleItemState('ANIM_box', count, 'parts_box')
            end,
        },
        server = {}
    },
    ["choplist"] = {
        label = "LSUNDG Shopping List",
        description = "Personal list just for you, how special",
        weight = 100.0,
        degrade = 1209600,
        rarity = 4,
        client = {},
        server = {}
    },
    ["lsundg_invite"] = {
        label = "LSUNDG Invitation",
        description = "Gain access to an exclusive club, wow aren't you special",
        weight = 100.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["chopping_invite"] = {
        label = "Sketchy USB Drive",
        description = "Probably not the greatest idea to plug this into your phone... unless?",
        weight = 100.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["birthday_cake"] = {
        label = "Birthday Cake",
        description = "Happy Birthday",
        weight = 2000.0,
        degrade = nil,
        rarity = 4,
        client = {
            status = { Add = { PLAYER_HUNGER = 100 } },
        },
        server = {}
    },
    ["scuba_gear"] = {
        label = "Scuba Gear",
        weight = 10000,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["cloth"] = {
        label = "Cloth",
        weight = 0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["pipe"] = {
        label = "Pipe",
        weight = 0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["nails"] = {
        label = "Nails",
        weight = 0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["blindfold"] = {
        label = "Blindfold",
        weight = 1000,
        degrade = 4320000,
        client = {},
        server = {}
    },
    ["diamond_vip"] = {
        label = "Diamond VIP",
        weight = 0,
        degrade = 604800,
        rarity = 3,
        client = {},
        server = {}
    },
    ["laptop"] = {
        label = "Laptop",
        weight = 4000,
        degrade = 2592000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["redlight"] = {
        label = "Handheld Light",
        weight = 2000,
        degrade = 2592000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["gascan"] = {
        label = "Gas Can",
        weight = 1250.0,
        degrade = 432000,
        rarity = 2,
        client = {
            usetime = 20000,
            status = { Remove = { PLAYER_THIRST = 70 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_seat_wall_eating@male@both_hands@base', clip = 'base' },
            prop = { model = `v_ind_cs_jerrycan03`, pos = vec3(0.16, 0.0, 0.03), rot = vec3(-70.0, 14.0, -42.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = true,
            },
        },
        server = {}
    },
    ["case_black"] = {
        label = "Phone Case: Black",
        weight = 0,
        degrade = 432000,
        client = {
            usetime = 3000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {
            export = 'sandbox-phone.phone_case'
        }
    },
    ["case_blue"] = {
        label = "Phone Case: Blue",
        weight = 0,
        degrade = 432000,
        client = {
            usetime = 3000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {
            export = 'sandbox-phone.phone_case'
        }
    },
    ["case_gold"] = {
        label = "Phone Case: Gold",
        weight = 0,
        degrade = 432000,
        client = {
            usetime = 3000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {
            export = 'sandbox-phone.phone_case'
        }
    },
    ["case_pink"] = {
        label = "Phone Case: Pink",
        weight = 0,
        degrade = 432000,
        client = {
            usetime = 3000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {
            export = 'sandbox-phone.phone_case'
        }
    },
    ["case_white"] = {
        label = "Phone Case: White",
        weight = 0,
        degrade = 432000,
        client = {
            usetime = 3000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {
            export = 'sandbox-phone.phone_case'
        }
    },
    ["event_invite"] = {
        label = "Race Event Invite",
        weight = 0,
        degrade = 86400,
        client = {},
        server = {}
    },
    ["alias_changer"] = {
        label = "Alias Changer",
        weight = 0,
        server = {}
    },
    ["present_daily"] = {
        label = "Daily Present",
        description = "Happy Holidays!",
        weight = 0,
        degrade = 86400,
        client = {},
        server = {}
    },
    ["shark_card"] = {
        label = "Shark Card",
        weight = 0,
        degrade = 86400,
        client = {},
        server = {}
    },
    ["snrbuns_cup"] = {
        label = "SB Cup",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["doublesnr_burger"] = {
        label = "Double Senior",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns_drink"] = {
        label = "Senior Buns Drink",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns_burger"] = {
        label = "Senior Burger",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns-frycup"] = {
        label = "Fries",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns_icecreamchocolate"] = {
        label = "Chocolate Ice Cream",
        weight = 250.0,
        degrade = 432000,
        client = {
            status = { Add = { PLAYER_HUNGER = 100 } },
        },
        server = {}
    },
    ["snrbuns_icecreamvanilla"] = {
        label = "Vanilla Ice Cream",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns_kebabchicken"] = {
        label = "Chicken Wrap",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["snrbuns_redshake"] = {
        label = "Strawberry Shake",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["coffee_holder"] = {
        label = "Drinks Holder",
        description = "Open Me!",
        weight = 8000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["foodbag"] = {
        label = "Carrier Bag",
        description = "Open Me!",
        weight = 15000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["bento_box"] = {
        label = "Bento Box",
        description = "Open Me!",
        weight = 10000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["cardboard_box"] = {
        description = "Open Me!",
        label = "Box",
        weight = 50000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["paper_bag"] = {
        label = "Bag",
        description = "Open Me!",
        weight = 10000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["burgershot_bag"] = {
        label = "Burgershot Bag",
        description = "Open Me!",
        weight = 10000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["card_holder"] = {
        label = "Card Holder",
        description = "Open Me!",
        weight = 2000,
        degrade = nil,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["lasagna"] = {
        label = "Lasagna",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["ravioli"] = {
        label = "Ravioli",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fettuccini_alfredo"] = {
        label = "Fettuccini Alfredo",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tiramisu"] = {
        label = "Tiramisu",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["AMMO_SMG"] = {
        label = "SMG Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_TASER"] = {
        label = "Taser Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_PISTOL"] = {
        label = "Pistol Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_PISTOL_PD"] = {
        label = "PD Pistol Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_SMG_PD"] = {
        label = "PD SMG Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_RIFLE_PD"] = {
        label = "PD Rifle Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_SHOTGUN_PD"] = {
        label = "PD Shotgun Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_BEANBAG_PD"] = {
        label = "PD Beanbag Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_SHOTGUN"] = {
        label = "Shotgun Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_RIFLE"] = {
        label = "Rifle Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["AMMO_SNIPER"] = {
        label = "Hunting Rifle Ammo",
        weight = 100.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["plastic"] = {
        label = "Plastic",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["scrapmetal"] = {
        label = "Scrap Metal",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["small_scrap_pile"] = {
        label = "Small Scrap Pile",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["spray_paint"] = {
        label = "Spray Paint",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["electronic_parts"] = {
        label = "Electronic Parts",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["rubber"] = {
        label = "Rubber",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["copperwire"] = {
        label = "Copper Wire",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["glue"] = {
        label = "Glue",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["heavy_glue"] = {
        label = "Heavy Duty Glue",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["goldbar"] = {
        label = "Gold Bar",
        weight = 250.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["silverbar"] = {
        label = "Silver Bar",
        weight = 250.0,
        degrade = 7776000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["ironbar"] = {
        label = "Iron Bar",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["gunpowder"] = {
        label = "Gun Powder",
        weight = 0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["refined_metal"] = {
        label = "Refined Aluminum",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_iron"] = {
        label = "Refined Iron",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_copper"] = {
        label = "Refined Copper",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_plastic"] = {
        label = "Refined Plasic",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_glue"] = {
        label = "Refined Glue",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_electronics"] = {
        label = "Advanced Electronic Parts",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["refined_rubber"] = {
        label = "Refined Rubber",
        weight = 0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["buttplug_black"] = {
        label = "Butt Plug",
        description = "Part of the Uranus Butt Plug Corporation.",
        weight = 1000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["buttplug_pink"] = {
        label = "Butt Plug",
        description = "Part of the Uranus Butt Plug Corporation.",
        weight = 1000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["vibrator_pink"] = {
        label = "Vibrator",
        description = "If you vibe it, they will cum.",
        weight = 2000,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["wine_bottle"] = {
        label = "Bottle of Wine",
        weight = 500.0,
        degrade = 12960000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["wine_glass"] = {
        label = "Glass of Wine",
        weight = 100.0,
        degrade = 432000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["beer"] = {
        label = "Beer",
        weight = 100.0,
        degrade = 432000,
        rarity = 1,
        client = {},
        server = {}
    },
    ["whiskey"] = {
        label = "Whiskey",
        weight = 300.0,
        degrade = 5184000,
        rarity = 1,
        client = {},
        server = {}
    },
    ["rum"] = {
        label = "Rum",
        weight = 300.0,
        degrade = 5184000,
        rarity = 1,
        client = {},
        server = {}
    },
    ["whiskey_glass"] = {
        label = "Glass of Whiskey",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["tequila"] = {
        label = "Tequila",
        weight = 300.0,
        degrade = 5184000,
        client = {},
        server = {}
    },
    ["tequila_shot"] = {
        label = "Shot of Tequila",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["tequila_sunrise"] = {
        label = "Tequila Sunrise",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["vodka"] = {
        label = "Vodka",
        weight = 300.0,
        degrade = 5184000,
        client = {},
        server = {}
    },
    ["vodka_shot"] = {
        label = "Shot of Vodka",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["jaeger_bomb"] = {
        label = "Jägerbomb",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["pina_colada"] = {
        label = "Pina Colada",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["raspberry_mimosa"] = {
        label = "Raspberry Mimosa",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["bahama_mamas"] = {
        label = "Bahama Mamas",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["bloody_mary"] = {
        label = "Bloody Mary",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["diamond_drink"] = {
        label = "The Diamond Cocktail",
        weight = 100.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["pint_mcdougles"] = {
        label = "McDougle's Stout",
        description = "McDougle's Irish Stout™",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_beer"] = {
        label = "Pole Dancer Pale Ale",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_boof"] = {
        label = "Boof Water",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_cyan"] = {
        label = "Unicorn Tears",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_shady"] = {
        label = "Shady on Rocks",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_dhaggy"] = {
        label = "Diet Haggy",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_haggy"] = {
        label = "Haggy",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_pinkgrip"] = {
        label = "Pink Grip",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_twister"] = {
        label = "Stiffy Twister",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_pinkshot"] = {
        label = "Pink Cherry Popper",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["vu_vipbottle"] = {
        label = "VIP Bottle",
        weight = 100.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["schmidt_chain"] = {
        label = "Schmidt Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["wsp_chain"] = {
        label = "WSP Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["curry_chain"] = {
        label = "Curry Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["kingdavid_chain"] = {
        label = "King David Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["wreckz_chain"] = {
        label = "Wreckz Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["boulevardboyz_chain"] = {
        label = "BB Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["chicken_chain"] = {
        label = "Chicken Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["angel_chain"] = {
        label = "Angel Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bwa_chain"] = {
        label = "BWA Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["crazy_chain"] = {
        label = "Crazy Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["families_chain"] = {
        label = "Families Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["kingemerald_chain"] = {
        label = "King Emerald Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["jordan_chain"] = {
        label = "Jordan Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["frankie_chain"] = {
        label = "Frankie Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["zmf_chain"] = {
        label = "ZMF Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["washer_chain"] = {
        label = "Washer Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["cudi_chain"] = {
        label = "Cudi Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["spade_chain"] = {
        label = "Spade Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sosa_chain"] = {
        label = "Sosa Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["fluff_chain"] = {
        label = "Fluff Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ashe_chain"] = {
        label = "Ashe Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mob_chain"] = {
        label = "Melo Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["vcb_chain"] = {
        label = "VCB Chain",
        weight = 0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["baguette"] = {
        label = "Baguette",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["bavarois"] = {
        label = "Bavarois",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["choux"] = {
        label = "Choux Pastry",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["choclat_eclair"] = {
        label = "Chocolate Eclair",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["charlotte"] = {
        label = "Charlotte",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["croissant"] = {
        label = "Croissant",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["latte"] = {
        label = "Latte",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_THIRST = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@base', clip = 'base' },
            prop = { model = `p_amb_brolly_01`, pos = vec3(0.15, 0.005, 0.0), rot = vec3(87.0, -20.0, 180.0), bone = 57005 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["donut_stack"] = {
        label = "Stack of Donuts",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.15,
            duration = 15,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["lockpick"] = {
        label = "Lockpick",
        weight = 500.0,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["adv_lockpick"] = {
        label = "Advanced Lockpick",
        weight = 500.0,
        degrade = 2419200,
        rarity = 2,
        client = {},
        server = {}
    },
    ["lockpick_pd"] = {
        label = "PD Lockpick",
        description = "Only Usable By Police",
        weight = 500.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["screwdriver"] = {
        label = "Screwdriver",
        weight = 400.0,
        degrade = 259200,
        client = {},
        server = {}
    },
    ["racing_crappy"] = {
        label = "Homemade Phone Dongle",
        description = "Its a really shitty dongly boi",
        weight = 1000,
        degrade = 43200,
        rarity = 4,
        client = {
            add = function(count)
                HandleItemState('RACE_DONGLE', count, 'racing_crappy')
            end,
            remove = function(count)
                HandleItemState('RACE_DONGLE', count, 'racing_crappy')
            end
        },
        server = {}
    },
    ["racedongle"] = {
        label = "Phone Dongle",
        description = "Its a dongly boi",
        weight = 2500.0,
        degrade = 1814400,
        rarity = 4,
        client = {
            add = function(count)
                HandleItemState('RACE_DONGLE', count, 'racedongle')
            end,
            remove = function(count)
                HandleItemState('RACE_DONGLE', count, 'racedongle')
            end
        },
        server = {}
    },
    ["vpn"] = {
        label = "VPN",
        weight = 1000,
        degrade = 1814400,
        rarity = 4,
        stack = false,
        decay = true,
        client = {
            add = function(count)
                HandleItemState('PHONE_VPN', count, 'vpn')
            end,
            remove = function(count)
                HandleItemState('PHONE_VPN', count, 'vpn')
            end
        }
    },
    ["adv_vpn"] = {
        label = "Advanced VPN",
        weight = 2000,
        degrade = 2592000,
        rarity = 4,
        stack = false,
        decay = true,
        client = {
            add = function(count)
                HandleItemState('ADV_VPN', count, 'adv_vpn')
            end,
            remove = function(count)
                HandleItemState('ADV_VPN', count, 'adv_vpn')
            end
        }
    },
    ["pickaxe"] = {
        label = "Pickaxe",
        weight = 0.0,
        degrade = 86400,
        client = {},
        server = {}
    },
    ["pdhandcuffs"] = {
        label = "PD Handcuffs",
        weight = 250.0,
        degrade = 604800,
        rarity = 4,
        client = {},
        server = {}
    },
    ["handcuffs"] = {
        label = "Handcuffs",
        weight = 500.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["fluffyhandcuffs"] = {
        label = "Fluffy Handcuffs",
        weight = 500.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["spikes"] = {
        label = "Spike Strips",
        weight = 12500.0,
        degrade = 604800,
        rarity = 4,
        client = {},
        server = {}
    },
    ["binoculars"] = {
        label = "Binoculars",
        weight = 2500.0,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["camera"] = {
        label = "Camera",
        weight = 2500.0,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["gps_tracker"] = {
        label = "GPS Tracker",
        weight = 1000,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["bobcat_tracker"] = {
        label = "GPS Tracker",
        weight = 1000,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fleeca_tracker"] = {
        label = "GPS Tracker",
        weight = 1000,
        degrade = 1814400,
        rarity = 4,
        client = {},
        server = {}
    },
    ["meth_table"] = {
        label = "Meth Table",
        weight = 500.0,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["parachute"] = {
        label = "Parachute",
        weight = 5000,
        degrade = 604800,
        rarity = 2,
        client = {},
        server = {}
    },
    ["det_cord"] = {
        label = "Det. Cord",
        weight = 250.0,
        degrade = 86400,
        rarity = 2,
        client = {},
        server = {}
    },
    ["schematic_pistol"] = {
        label = "Schematic: Pistol",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_combat_pistol"] = {
        label = "Schematic: Combat Pistol",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_fnx"] = {
        label = "Schematic: A45 Tactical",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_57"] = {
        label = "Schematic: Six Eight",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_sns"] = {
        label = "Schematic: SNS Pistol",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_snsmk2"] = {
        label = "Schematic: SNS Mk2 Pistol",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_glock"] = {
        label = "Schematic: F19",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_tact2011"] = {
        label = "Schematic: 2011 Tactical",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_m9a3"] = {
        label = "Schematic: M9A3",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_heavypistol"] = {
        label = "Schematic: Heavy Pistol",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_doubleaction"] = {
        label = "Schematic: Double Action Revolver",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_l5"] = {
        label = "Schematic: Desert Eagle K8",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_deagle"] = {
        label = "Schematic: Desert Eagle",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_revolver"] = {
        label = "Schematic: Revolver",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mp5"] = {
        label = "Schematic: SB54",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_smg"] = {
        label = "Schematic: SMG",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_microsmg"] = {
        label = "Schematic: MAC 10",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_tommygun"] = {
        label = "Schematic: Tommy Gun",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_smgmk2"] = {
        label = "Schematic: SMG Mk2",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mpx"] = {
        label = "Schematic: MP 9mm",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_pp19"] = {
        label = "Schematic: PP-19",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_ump"] = {
        label = "Schematic: .45 SMG",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_p90"] = {
        label = "Schematic: PDW",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_miniuzi"] = {
        label = "Schematic: Mini UZI",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mp9"] = {
        label = "Schematic: MP9",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_vector"] = {
        label = "Schematic: Vector",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_appistol"] = {
        label = "Schematic: F18 Auto",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_tec9"] = {
        label = "Schematic: TEC-9",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_draco"] = {
        label = "Schematic: Draco",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_hk16a"] = {
        label = "Schematic: HK16A",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_hk16b"] = {
        label = "Schematic: HK16B",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_ar"] = {
        label = "Schematic: AK-47",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mcxspear"] = {
        label = "Schematic: MCX Spear",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mcxrattler"] = {
        label = "Schematic: MCX Rattler",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_advrifle"] = {
        label = "Schematic: Adv. Rifle",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_asval"] = {
        label = "Schematic: AS-VAL",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_nsr9"] = {
        label = "Schematic: NSR9",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_g36"] = {
        label = "Schematic: F69",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_ak74"] = {
        label = "Schematic: AK-74",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_ar15"] = {
        label = "Schematic: AR-15",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_rpk"] = {
        label = "Schematic: RPK16",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_honeybadger"] = {
        label = "Schematic: Honey Badger",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_hk417"] = {
        label = "Schematic: HK417",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_rfb"] = {
        label = "Schematic: RFB",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mk47mutant"] = {
        label = "Schematic: MK47 Mutant",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mk47a"] = {
        label = "Schematic: MK47 A",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_mk47s"] = {
        label = "Schematic: MK47 S",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_grapple_gun"] = {
        label = "Schematic: Grapple Gun",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_pistol_ammo"] = {
        label = "Schematic: Pistol Ammo",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_smg_ammo"] = {
        label = "Schematic: SMG Ammo",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_shotgun_ammo"] = {
        label = "Schematic: Shotgun Ammo",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_thermite"] = {
        label = "Schematic: Thermite",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_blindfold"] = {
        label = "Schematic: Blindfold",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_green_laptop"] = {
        label = "Schematic: Green Laptop",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_blue_laptop"] = {
        label = "Schematic: Blue Laptop",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_redlaptop"] = {
        label = "Schematic: Red Laptop",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_purple_laptop"] = {
        label = "Schematic: Purple Laptop",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_yellow_laptop"] = {
        label = "Schematic: Yellow Laptop",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_handcuffs"] = {
        label = "Schematic: Handcuffs",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_radio_extendo"] = {
        label = "Schematic: B0085 Radio",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_38_snubnose"] = {
        label = "Schematic: .38 Snubnose",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_38_custom"] = {
        label = "Schematic: .38 Custom",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_44_magnum"] = {
        label = "Schematic: .44 Magnum",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["schematic_p226"] = {
        label = "Schematic: P226",
        weight = 0,
        degrade = 1814400,
        client = {},
        server = {}
    },
    ["unknown_ore"] = {
        label = "Unknown Ore",
        weight = 3000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["packaged_parts"] = {
        label = "Packaged Parts",
        weight = 4000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["hunting_bait"] = {
        label = "Hunting Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["deer_bait"] = {
        label = "Deer Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["boar_bait"] = {
        label = "Boar Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["pig_bait"] = {
        label = "Pig Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["chicken_bait"] = {
        label = "Chicken Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["cow_bait"] = {
        label = "Cow Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["rabbit_bait"] = {
        label = "Rabbit Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["exotic_bait"] = {
        label = "Exotic Bait",
        weight = 2000.0,
        degrade = nil,
        rarity = 5,
        client = {},
        server = {}
    },
    ["jugo"] = {
        label = "Jugo Fruit Punch",
        description = "Definitely organic.",
        weight = 250.0,
        degrade = 172800,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_THIRST = 15 }, Remove = { PLAYER_HUNGER = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["taco_soda"] = {
        label = "Southside Soda",
        description = "Yeah, tastes about right.",
        weight = 250.0,
        degrade = 172800,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_THIRST = 15 }, Remove = { PLAYER_HUNGER = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["beef_taco"] = {
        label = "Beef Taco",
        description = "In case you don't have beef yet.",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tostada"] = {
        label = "Tostada",
        description = "Deep fried or toasted?",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["quesadilla"] = {
        label = "Quesadilla",
        description = "Basically grilled cheese",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["burrito"] = {
        label = "Burrito",
        description = "Burritoe, get it?",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["enchilada"] = {
        label = "Enchilada",
        description = "Meat birthday cakes.",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["carne_asada"] = {
        label = "Carne Asada",
        description = "Kanye Asada",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["torta"] = {
        label = "Torta",
        description = "Fancy sub",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_taco_01`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["taco_chicken"] = {
        label = "Raw Chicken Strips",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["taco_steak"] = {
        label = "Raw Steak Strips",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["taco_beef"] = {
        label = "Raw Ground Beef",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["taco_cheese"] = {
        label = "Shredded Cheese",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["taco_tortilla"] = {
        label = "Tortilla Shell",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["torta_roll"] = {
        label = "Torta Roll",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["taco_plastic_cups"] = {
        label = "Taco Plastic Cups",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["briefcase_cash"] = {
        label = "Briefcase",
        description = "Sandbox Lotto Event",
        weight = 1000,
        degrade = 864000,
        rarity = 4,
        client = {},
        server = {}
    },
    ["valuegoods"] = {
        label = "Valuable Goods",
        description = "Potentially Stolen",
        weight = 1000,
        degrade = 864000,
        rarity = 4,
        client = {},
        server = {}
    },
    ["goldcoins"] = {
        label = "Gold Coins",
        description = "Potentially Stolen",
        weight = 100.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["rolex"] = {
        label = "Rolex",
        description = "Potentially Stolen",
        weight = 750.0,
        degrade = 864000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["ring"] = {
        label = "Ring",
        description = "Potentially Stolen",
        weight = 1000,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["chain"] = {
        label = "Gold Chain",
        description = "Potentially Stolen",
        weight = 500.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["watch"] = {
        label = "Gold Watch",
        description = "Potentially Stolen",
        weight = 1000,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["earrings"] = {
        label = "Gold Earrings",
        description = "Potentially Stolen",
        weight = 800.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["tv"] = {
        label = "Television",
        description = "Potentially Stolen",
        weight = 100000.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["big_tv"] = {
        label = "Television",
        description = "Potentially Stolen",
        weight = 100000.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["boombox"] = {
        label = "Boom Box",
        description = "Potentially Stolen",
        weight = 50000.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["microwave"] = {
        label = "Microwave",
        description = "Potentially Stolen",
        weight = 50000.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["golfclubs"] = {
        label = "Golf Club Set",
        weight = 100000.0,
        degrade = 864000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["house_art"] = {
        label = "Painting",
        weight = 100000.0,
        degrade = 864000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["pc"] = {
        label = "PC",
        weight = 80000.0,
        degrade = 864000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["crushedrock"] = {
        label = "Crushed Rock",
        weight = 100.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["salvagedparts"] = {
        label = "Salvaged Parts",
        weight = 100.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["recycledgoods"] = {
        label = "Recycled Goods",
        weight = 100.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["goldore"] = {
        label = "Gold Ore",
        weight = 250.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["silverore"] = {
        label = "Silver Ore",
        weight = 250.0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["ironore"] = {
        label = "Iron Ore",
        weight = 0,
        degrade = 7776000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["diamond"] = {
        label = "Diamond",
        weight = 500.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["emerald"] = {
        label = "Emerald",
        weight = 500.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["sapphire"] = {
        label = "Sapphire",
        weight = 500.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["ruby"] = {
        label = "Ruby",
        weight = 500.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["amethyst"] = {
        label = "Amethyst",
        weight = 500.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["citrine"] = {
        label = "Citrine",
        weight = 500.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["opal"] = {
        label = "Opal",
        weight = 500.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["moneyroll"] = {
        label = "Cash Roll",
        weight = 10.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["moneyband"] = {
        label = "Bands of Cash",
        weight = 10.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["moneybag"] = {
        label = "Bag of Cash",
        weight = 3000,
        degrade = 1209600,
        client = {},
        server = {}
    },
    ["hide_tier1"] = {
        label = "Animal Hide (Tier 1)",
        weight = 250.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["hide_tier2"] = {
        label = "Animal Hide (Tier 2)",
        weight = 250.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["hide_tier3"] = {
        label = "Animal Hide (Tier 3)",
        weight = 250.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["hide_tier4"] = {
        label = "Animal Hide (Tier 4)",
        weight = 250.0,
        degrade = 864000,
        client = {},
        server = {}
    },
    ["fleeca_card"] = {
        label = "Disposable Access Card",
        description = "This seems like it may be useful",
        weight = 250.0,
        degrade = 21600,
        rarity = 4,
        client = {},
        server = {}
    },
    ["crypto_voucher"] = {
        label = "Crypto Voucher",
        weight = 250.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["rep_voucher"] = {
        label = "Rep Voucher",
        weight = 250.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["traumakit"] = {
        label = "Trauma Kit",
        description = "Needed to treat serious trauma in the field",
        weight = 5000,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["medicalkit"] = {
        label = "Medical Kit",
        description = "Used to treat patients. Only usable by Doctors",
        weight = 3000,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ifak"] = {
        label = "IFAK",
        weight = 3000,
        degrade = 432000,
        rarity = 3,
        client = {
            usetime = 15000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["firstaid"] = {
        label = "First Aid Kit",
        weight = 5000,
        degrade = 432000,
        rarity = 2,
        client = {
            usetime = 11000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tourniquet"] = {
        label = "Tourniquet",
        weight = 1000,
        degrade = 604800,
        client = {
            usetime = 5000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["bandage"] = {
        label = "Bandage",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 2000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["gauze"] = {
        label = "Gauze",
        weight = 100.0,
        degrade = 432000,
        client = {
            usetime = 2000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["morphine"] = {
        label = "Morphine",
        weight = 1000,
        degrade = 432000,
        client = {
            usetime = 8000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_clipboard@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_stat_pack_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rootbeerfloat"] = {
        label = "Root Beer Float",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 10, PLAYER_THIRST = 90 }, Remove = { PLAYER_STRESS = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["milkshake"] = {
        label = "Explosive Shake",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.15,
            duration = 15,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 20, PLAYER_THIRST = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chocolate_shake"] = {
        label = "Chocolate Shake",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.15,
            duration = 15,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 20, PLAYER_THIRST = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chickenpotpie"] = {
        label = "Chicken Pot Pie",
        description = "A truly hearty meal",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chickenfriedsteak"] = {
        label = "Chicken Fried Steak",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["salisbury_steak"] = {
        label = "Salisbury Steak",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["baconeggbiscuit"] = {
        label = "Bacon & Egg Biscuit",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sloppyjoe"] = {
        label = "Sloppy Joe",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tomato"] = {
        label = "Tomato",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["raspberry"] = {
        label = "Raspberry",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["potato"] = {
        label = "Potato",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["orange"] = {
        label = "Orange",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["lettuce"] = {
        label = "Lettuce",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["cucumber"] = {
        label = "Cucumber",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["peas"] = {
        label = "Peas",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pickle"] = {
        label = "Pickle",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pineapple"] = {
        label = "Pineapple",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["chicken"] = {
        label = "Chicken",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["beef"] = {
        label = "Beef",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pork"] = {
        label = "Pork",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["venison"] = {
        label = "Venison",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["rabbit"] = {
        label = "Rabbit",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["unk_meat"] = {
        label = "Meat",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["dough"] = {
        label = "Dough",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["loaf"] = {
        label = "Bread Loaf",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["icing"] = {
        label = "Icing",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sugar"] = {
        label = "Bag of Sugar",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["flour"] = {
        label = "Bag of Flour",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["rice"] = {
        label = "Bag of Rice",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["milk_can"] = {
        label = "Milk Canister",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["keg"] = {
        label = "Keg of Irish Stout",
        description = "McDougle's Irish Stout™",
        weight = 1500.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["coconut_milk"] = {
        label = "Coconut Milk",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["cheese"] = {
        label = "Bag of Cheese",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["tea_leaf"] = {
        label = "Tea Leaf",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["plastic_cup"] = {
        label = "Plastic Cup",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["coffee_beans"] = {
        label = "Coffee Beans",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["jaeger"] = {
        label = "Jägermeister",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["raspberry_liqueur"] = {
        label = "Raspberry Liqueur",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sparkling_wine"] = {
        label = "Sparkling Wine",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["peach_juice"] = {
        label = "Peach Juice",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["eggs"] = {
        label = "Eggs",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["yeast"] = {
        label = "Yeast",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["grain"] = {
        label = "Grain",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hobs"] = {
        label = "Hobs",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ginger"] = {
        label = "Ginger",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hotdog_single"] = {
        label = "Hotdog Single",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["popcorn_kernal"] = {
        label = "Popcorn Kernal",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["popcorn_bucket"] = {
        label = "Empty Bucket",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["car_bomb"] = {
        label = "Car Bomb",
        weight = 5000.0,
        degrade = 1814400,
        rarity = 3,
        client = {},
        server = {}
    },
    ["fishing_rod"] = {
        label = "Fishing Rod",
        description = "Catch the Fishies",
        weight = 3500.0,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["fishing_net"] = {
        label = "Fishing Net",
        description = "Catch all the Fishies",
        weight = 5000.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_bait_lugworm"] = {
        label = "Lugworm Bait",
        description = "Marine Fish Bait",
        weight = 100.0,
        degrade = 5184000,
        client = {},
        server = {}
    },
    ["fishing_bait_worm"] = {
        label = "Worm Bait",
        description = "Fresh Water Fish Bait",
        weight = 100.0,
        degrade = 5184000,
        client = {},
        server = {}
    },
    ["fishing_rainbowtrout"] = {
        label = "Rainbow Trout",
        description = "A fish found in fresh water",
        weight = 2000.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_chub"] = {
        label = "Chub",
        description = "A fish found in fresh water",
        weight = 1500.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_grasscarp"] = {
        label = "Grass Carp",
        description = "A fish found in fresh water",
        weight = 1000.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_kelp"] = {
        label = "Kelp Fish",
        description = "A fish found in the ocean",
        weight = 1500.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_bass"] = {
        label = "Bass Fish",
        description = "A fish found in the ocean",
        weight = 1500.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_rockfish"] = {
        label = "Rock Fish",
        description = "A fish found in the ocean",
        weight = 1000.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_lobster"] = {
        label = "Lobster",
        description = "It's a lobster",
        weight = 750.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_tuna"] = {
        label = "Tuna",
        weight = 2500.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_bluefintuna"] = {
        label = "Bluefin Tuna",
        weight = 3500.0,
        degrade = 5184000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["fishing_whale"] = {
        label = "A Whale",
        weight = 100000.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fishing_dolphin"] = {
        label = "A Dolphin",
        weight = 50000.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fishing_shark"] = {
        label = "A Shark",
        weight = 75000.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fishing_boot"] = {
        label = "Soggy Boot",
        description = "I think someone is missing a boot",
        weight = 5000.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["fishing_bike"] = {
        label = "Rusty Bicycle",
        description = "I don't think this is worth anything",
        weight = 25000.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["fishing_chest"] = {
        label = "Old Chest",
        description = "Maybe There is Treasure!",
        weight = 50000.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fishing_oil"] = {
        label = "Fish Oil",
        description = "Eww",
        weight = 250.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["fishing_seaweed"] = {
        label = "Seaweed",
        description = "A salty snack",
        weight = 10.0,
        degrade = 5184000,
        rarity = 2,
        client = {},
        server = {}
    },
    ["weedseed_male"] = {
        label = "Male Marijuana Seed",
        weight = 50.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["weedseed_female"] = {
        label = "Female Marijuana Seed",
        weight = 50.0,
        degrade = 2419200,
        client = {},
        server = {}
    },
    ["rolling_paper"] = {
        label = "Rolling Paper",
        weight = 10.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["plastic_wrap"] = {
        label = "Plastic Wrap",
        weight = 50.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["baggy"] = {
        label = "Empty Baggy",
        weight = 50.0,
        degrade = 604800,
        client = {},
        server = {}
    },
    ["weed_baggy"] = {
        label = "Baggy of Weed",
        weight = 50.0,
        degrade = 1209600,
        rarity = 2,
        client = {},
        server = {}
    },
    ["weed_bud"] = {
        label = "Marijuana Bud",
        weight = 100.0,
        degrade = 1209600,
        stack = 100,
        client = {},
        server = {}
    },
    ["weed_joint"] = {
        label = "Joint",
        weight = 500.0,
        degrade = 1728000,
        drugState = {
            type = "weed",
            duration = (60 * 30),
        },
        client = {
            status = { Remove = { PLAYER_HUNGER = 5 } },
        },
        server = {}
    },
    ["weed_brick"] = {
        label = "Brick of Weed",
        weight = 10000,
        degrade = 3888000,
        rarity = 3,
        client = {},
        server = {}
    },
    ["oxy"] = {
        label = "OxyContin",
        weight = 100.0,
        degrade = 1728000,
        drugState = {
            type = "oxy",
            duration = (60 * 60),
        },
        client = {
            usetime = 2800,
            cancel = false,
            allowArmed = false,
            status = { Remove = { PLAYER_THIRST = 3 } },
            anim = { dict = 'mp_suicide', clip = 'pill' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["contraband"] = {
        label = "Mysterious Box",
        weight = 0,
        degrade = 86400,
        rarity = 5,
        client = {},
        server = {}
    },
    ["meth_pipe"] = {
        label = "Meth Pipe",
        weight = 1000,
        degrade = 2592000,
        client = {},
        server = {}
    },
    ["meth_bag"] = {
        label = "Meth",
        weight = 100.0,
        degrade = 1728000,
        client = {},
        server = {}
    },
    ["meth_brick"] = {
        label = "Brick of Meth",
        weight = 5000,
        degrade = 1728000,
        client = {},
        server = {}
    },
    ["coke_bag"] = {
        label = "Cocaine",
        weight = 100.0,
        degrade = 1728000,
        drugState = {
            type = "coke",
            duration = (60 * 60),
        },
        client = {
            status = { Remove = { PLAYER_THIRST = 5 } },
        },
        server = {}
    },
    ["coke_brick"] = {
        label = "Brick of Cocaine",
        weight = 5000,
        degrade = 1728000,
        client = {},
        server = {}
    },
    ["adrenaline"] = {
        label = "Adrenaline Syringe",
        weight = 0.0,
        degrade = 604800,
        rarity = 3,
        client = {},
        server = {}
    },
    ["moonshine_still"] = {
        label = "Still",
        weight = 2000.0,
        degrade = 1209600,
        rarity = 4,
        client = {},
        server = {}
    },
    ["moonshine_barrel"] = {
        label = "Oak Barrel",
        weight = 2000.0,
        degrade = 1209600,
        rarity = 4,
        client = {},
        server = {}
    },
    ["moonshine_jar"] = {
        label = "Empty Mason Jar",
        weight = 0.0,
        degrade = 7776000,
        client = {},
        server = {}
    },
    ["moonshine"] = {
        label = "Homemade Moonshine",
        weight = 100.0,
        degrade = 864000,
        rarity = 2,
        client = {},
        server = {}
    },
    ['water'] = {
        label = 'Water',
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 5000,
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["onion_rings"] = {
        label = "Onion Rings",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 30 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chocolate_bar"] = {
        label = "Chocolate Bar",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 30 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_choc_ego`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["donut"] = {
        label = "Donut",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 80,
        },
        client = {},
        server = {}
    },
    ["blueberry_muffin"] = {
        label = "Blueberry Muffin",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chocy_muff"] = {
        label = "Chocolate Muffin",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["crisp"] = {
        label = "Crisps",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 20 } },
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["energy_pepe"] = {
        label = "Energy Drink",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.15,
            duration = 12,
            cooldown = 60,
        },
        client = {
            usetime = 6000,
            status = { Add = { PLAYER_THIRST = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@pnq', clip = 'loop' },
            prop = { model = `prop_choc_ego`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["coffee"] = {
        label = "Coffee",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_THIRST = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["salad"] = {
        label = "Salad",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["lemonade"] = {
        label = "Lemonade",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 5, PLAYER_THIRST = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["smoothie_orange"] = {
        label = "Orange Smoothie",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 15, PLAYER_THIRST = 60 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["glass_cock"] = {
        label = "Coke",
        description = "Glass of Cock",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 5, PLAYER_THIRST = 60 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["soda"] = {
        label = "Soda",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_THIRST = 35 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["gingerale"] = {
        label = "Gingerale",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_THIRST = 35 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_ecola_can`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chips"] = {
        label = "Chips",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_THIRST = 55 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fishandchips"] = {
        label = "Fish and Chips",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sausageroll"] = {
        label = "Sausage Roll",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["cheeseburger"] = {
        label = "Cheese Burger",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 15 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["vension_steak"] = {
        label = "Venison Steak",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fries"] = {
        label = "Fries",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 30 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_fries_box_prop`, pos = vec3(0.125, 0.04, 0.025), rot = vec3(0.0, 150.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["popcorn"] = {
        label = "Popcorn",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 20 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
            prop = { model = `xs_prop_trinket_cup_01a`, pos = vec3(0.16, 0.0, 0.03), rot = vec3(-70.0, 14.0, 42.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["hotdog"] = {
        label = "Hotdog",
        description = "A dog but very hot",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 10 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_cs_hotdog_01`, pos = vec3(-0.03, 0.01, -0.010000), rot = vec3(95.107101, 94.700104, -66.917900), bone = 60309 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_strawsprinkle"] = {
        label = "Cherry Pop",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 80,
            skipScreenEffects = true,
        },
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut02`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_ring"] = {
        label = "Rusty Ring",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut02`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_lemon"] = {
        label = "Bannana Deep",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut03`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_custard"] = {
        label = "Creampie",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 80,
            skipScreenEffects = true,
        },
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut08`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_cookiecream"] = {
        label = "Manure Mix",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut04`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_chocstuff"] = {
        label = "Brown Mess",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut07`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_chocsprinkle"] = {
        label = "Chocolate Whammy",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 80,
            skipScreenEffects = true,
        },
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 }, Remove = { PLAYER_THIRST = 3 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_blueice"] = {
        label = "Follemos",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 8000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut05`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_strawsprinkbox"] = {
        label = "Box of Swifty Sprinkles",
        weight = 5000.0,
        degrade = 864000,
        client = {
            usetime = 2000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `map4all_asset_donut05`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(135.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_ringmixbox"] = {
        label = "Box of Mixed Rings",
        weight = 5000.0,
        degrade = 864000,
        client = {
            usetime = 2000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_ringbox"] = {
        label = "Box of Rings",
        weight = 5000.0,
        degrade = 864000,
        client = {
            usetime = 2000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_pd"] = {
        label = "Rusty's Sword",
        weight = 5000.0,
        degrade = 864000,
        client = {
            usetime = 2000,
            cancel = true,
            allowArmed = false,
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["shmilk"] = {
        label = "Shmilk",
        weight = 1000.0,
        degrade = 259200,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 15, PLAYER_THIRST = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `bzzz_machines_milk_box`, pos = vec3(0.12, -0.04, 0.06), rot = vec3(-65.0, 85.0, -20.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chai_latte"] = {
        label = "Chai Latte",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tommy_tea"] = {
        label = "Tommy Tea",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `bzzz_food_cooffeecup01_a`, pos = vec3(0.14, 0.0, 0.06), rot = vec3(-224.0, -77.0, -132.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["rusty_empty"] = {
        label = "Empty Donut Box",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["burgershot_cup"] = {
        label = "BS Cup",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bun"] = {
        label = "Hamburger Bun",
        weight = 100.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["patty"] = {
        label = "Hamburger Patty",
        weight = 200.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["burger"] = {
        label = "The Bleeder",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 25 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_burger_bleeder_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(-194.0, 0.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["burgershot_drink"] = {
        label = "Burger Shot Cola",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_THIRST = 75 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `nels_soda_prop`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 190.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["burgershot_southern_sweet"] = {
        label = "Burger Shot Southern Sweet",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["burgershot_dr_peppy"] = {
        label = "Burger Shot Dr. Peppy",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["burgershot_rimjob"] = {
        label = "Burger Shot Rimjob",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["double_shot_burger"] = {
        label = "Double Shot",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_burger_double_shot_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(-194.0, 0.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["prickly_burger"] = {
        label = "The Prickly",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_burger_prickly_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(-194.0, 0.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["the_simply_burger"] = {
        label = "Simply Burger",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_burger_simply_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(-194.0, 0.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["tacos"] = {
        label = "Taco",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 12000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_tacos_prop`, pos = vec3(0.13, 0.07, 0.02), rot = vec3(160.0, 0.0, -50.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["burgershot_fries"] = {
        label = "Fries",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 60 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_fries_box_prop`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 150.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["heartstopper"] = {
        label = "Heart Stopper",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_burger_fabulous_6lb_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(-194.0, 0.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["meteorite_icecream"] = {
        label = "Meteorite Ice Cream",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 50, PLAYER_THIRST = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `nels_ice_cream_meteorite_prop`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["orangotang_icecream"] = {
        label = "Orangotang Ice Cream",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 50, PLAYER_THIRST = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `nels_ice_cream_orang_otan_prop`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["goat_cheese_wrap"] = {
        label = "Goat Cheese Wrap",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 50, PLAYER_THIRST = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_goat_wrap_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(0.0, 160.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["chicken_wrap"] = {
        label = "Chicken Wrap",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 15000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `nels_chicken_wrap_prop`, pos = vec3(0.135, 0.01, 0.0), rot = vec3(0.0, 160.0, 0.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich"] = {
        label = "Ham Sandwich",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_turkey"] = {
        label = "Turkey Sandwich",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_beef"] = {
        label = "Beef Sandwich",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 42 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_blt"] = {
        label = "BLT Sandwich",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_egg"] = {
        label = "Egg Sandwich",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 35 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_chips"] = {
        label = "Chip Butty",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 45 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["sandwich_crisp"] = {
        label = "Crisp Sandwich",
        description = "Yeah, that's right. Crisps",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 11000,
            status = { Add = { PLAYER_HUNGER = 30 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `mp_player_int_eat_burger`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["pepperoni_pizza"] = {
        label = "Pepperoni Pizza",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@code_human_wander_eating_donut@male@idle_a', clip = 'idle_a' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["margherita_pizza"] = {
        label = "Margherita Pizza",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 90 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@code_human_wander_eating_donut@male@idle_a', clip = 'idle_a' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["san_manzano_pizza"] = {
        label = "San Manzano Pizza",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 18000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@code_human_wander_eating_donut@male@idle_a', clip = 'idle_a' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["pasta_fresca"] = {
        label = "Pasta Fresca",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 20000,
            status = { Add = { PLAYER_HUNGER = 80 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["penna_rosa"] = {
        label = "Penne Rosa",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 20000,
            status = { Add = { PLAYER_HUNGER = 85 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["pesto_cavatappi"] = {
        label = "Pesto Cavatappi",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 17000,
            status = { Add = { PLAYER_HUNGER = 75 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["spag_bowl"] = {
        label = "Spaghetti Bolognese",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 17000,
            status = { Add = { PLAYER_HUNGER = 70 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["beef_tartare"] = {
        label = "Beef Tartare",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["duck_leg_confit"] = {
        label = "Duck Leg Confit",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["wagyu_sirloin"] = {
        label = "Kuroge Wagyu Sirloin",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["lamb_chops"] = {
        label = "Cognac Dijon Lamb Chops",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mussels"] = {
        label = "Mussels a la Bourguignonne",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["tarte_tatin"] = {
        label = "Tarte Tatin",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["tarte_tatin_chocolate"] = {
        label = "Tarte au Chocolat",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["cherry_milkshake"] = {
        label = "Cherry Milkshake",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["noalch_red_wine"] = {
        label = "Non Alcoholic Red Wine",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["choclate_pancakes"] = {
        label = "Chocolate Pancakes",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["apple_crumble"] = {
        label = "Apple Crumble",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 10000,
            status = { Add = { PLAYER_HUNGER = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["ramen"] = {
        label = "Ramen",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["kitty_sliders"] = {
        label = "Kitty Sliders",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["bento_boxfood"] = {
        label = "Bento Box",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["kitty_sushi"] = {
        label = "Kitty Sushi",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["miso_soup"] = {
        label = "Miso Soup",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["purrrito"] = {
        label = "Purrrito",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["kitty_pizza"] = {
        label = "Kitty Pizza",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["cat_donut"] = {
        label = "Cat Donut",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                prop = { model = `prop_amb_donut`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["cat_cupcake"] = {
        label = "Cat Cupcake",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 40 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                prop = { model = `prop_amb_donut`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0), bone = 18905 },
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["homemade_cookie"] = {
        label = "Homemade Cookie",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 5000,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fruit_explosion"] = {
        label = "Fruit Explosion",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 5000,
            status = { Add = { PLAYER_HUNGER = 30, PLAYER_THIRST = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["booba_tea"] = {
        label = "Bobba Tea",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 100 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `bzzz_food_bubbletea_a`, pos = vec3(0.12, 0.0, 0.05), rot = vec3(-115.0, 296.0, 13.0), bone = 18905 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["mochi_blue"] = {
        label = "Blueberry Mochi",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mochi_green"] = {
        label = "Matcha Mochi",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mochi_orange"] = {
        label = "Mango Mochi",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mochi_pink"] = {
        label = "Strawberry Mochi",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["mango_refresher"] = {
        label = "Mango Refresher",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["green_tea"] = {
        label = "Green Tea",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 75 }, Remove = { PLAYER_DRUNK = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["iced_coffee"] = {
        label = "Iced Coffee",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 25 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ['matcha_latte'] = {
        label = "Matcha Latte",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 50 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["blueberry_boba"] = {
        label = "Blueberry Boba",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["matcha_boba"] = {
        label = "Matcha Boba",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["strawberry_boba"] = {
        label = "Strawberry Boba",
        weight = 250.0,
        degrade = 432000,
        client = {},
        server = {}
    },
    ["pumpkinspiced_latte"] = {
        label = "Pumpkin Spice Latte",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_THIRST = 25 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["cat_tuccino"] = {
        label = "Cat Tuccino",
        weight = 250.0,
        degrade = 432000,
        client = {
            usetime = 7500,
            status = { Add = { PLAYER_HUNGER = 15 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["frozen_yoghurt"] = {
        label = "Frozen Yoghurt",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.1,
            duration = 18,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["fresh_lemonade"] = {
        label = "Fresh Lemonade",
        weight = 250.0,
        degrade = 432000,
        energyModifier = {
            modifier = 1.15,
            duration = 15,
            cooldown = 60,
            skipScreenEffects = true,
        },
        client = {
            usetime = 9000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
            prop = { model = `prop_plastic_cup_02`, pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["uwu_prize_box"] = {
        label = "UwU Mystery Box",
        description = "Collect all the different bears! UwU",
        weight = 0.0,
        degrade = nil,
        client = {
            usetime = 3000,
            status = { Add = { PLAYER_HUNGER = 100, PLAYER_THIRST = 10 } },
            cancel = true,
            allowArmed = false,
            anim = { dict = 'anim@mp_player_intcelebrationmale@mind_blown', clip = 'mind_blown' },
            disable = {
                move = false,
                car = false,
                combat = true,
                mouse = false,
                sprint = false,
            },
        },
        server = {}
    },
    ["uwu_prize_b1"] = {
        label = "UwU Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["uwu_prize_b2"] = {
        label = "UwU Rainbow Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["uwu_prize_b3"] = {
        label = "UwU Sun Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["uwu_prize_b4"] = {
        label = "UwU Flower Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["uwu_prize_b5"] = {
        label = "UwU Tree Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["uwu_prize_b6"] = {
        label = "UwU Heart Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["uwu_prize_b7"] = {
        label = "UwU Moon Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["uwu_prize_b8"] = {
        label = "UwU Rain Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 3,
        client = {},
        server = {}
    },
    ["uwu_prize_b9"] = {
        label = "UwU Star Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["uwu_prize_b10"] = {
        label = "UwU Snow Bear",
        description = "UwU Cafe Collectable",
        weight = 0.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["backpack"] = {
        label = "Backpack",
        description = "A backpack with a capacity of 5 slots.",
        weight = 2000.0,
        degrade = nil,
        rarity = 4,
        container = {
            slots = 5,
            maxWeight = 5000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["large_backpack"] = {
        label = "Large Backpack",
        description = "A backpack with a capacity of 10 slots.",
        weight = 4000.0,
        degrade = nil,
        rarity = 4,
        container = {
            slots = 10,
            maxWeight = 10000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["military_backpack"] = {
        label = "Military Backpack",
        description = "A backpack with a capacity of 15 slots.",
        weight = 8000.0,
        degrade = nil,
        rarity = 4,
        container = {
            slots = 15,
            maxWeight = 15000,
            -- Currently, any item can go in this container
        },
        client = {},
        server = {}
    },
    ["carvedpumpkin"] = {
        label = "Jack O' Lantern",
        description = "Trick Or Treat Muthafu-",
        weight = 3000.0,
        degrade = nil,
        rarity = 4,
        client = {},
        server = {}
    },
    ["taco_bag"] = {
        label = "Bagged Order",
        description = "Smells just like Southside",
        weight = 1000.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["present"] = {
        label = "Present",
        description = "Happy Holidays!",
        weight = 1000.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["simcard"] = {
        label = "Sim Card",
        description = "A Sim Card for a phone",
        weight = 1000.0,
        degrade = nil,
        rarity = 2,
        client = {},
        server = {}
    },
    ["wallet"] = {
        label = "Wallet",
        description = "A Wallet for your money",
        weight = 1000.0,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mint_mate_chain"] = {
        label = "Mint Mate Chain",
        description = "It's Mint Mate",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mint_mate_chain_2"] = {
        label = "Mint Mate Chain (Large)",
        description = "It's Mint Mate ... but large",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ssb_chain"] = {
        label = "SSB Chain",
        description = "SSB Gang Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["gotti_chain"] = {
        label = "Gotti Family Chain",
        description = "Gotti Family Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["uwu_chain"] = {
        label = "UwU Chain",
        description = "UwU Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pixels_chain"] = {
        label = "Business Bureau Chain",
        description = "Business Bureau Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["frosty_chain"] = {
        label = "Frosty Chain",
        description = "Frosty Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["milk_chain"] = {
        label = "Milk Chain",
        description = "Milk Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["saint_chain"] = {
        label = "Saint Chain",
        description = "Saint Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bobs_chain"] = {
        label = "Bob's Balls Chain",
        description = "Bob's Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["lala_chain"] = {
        label = "Tequi-La-La Chain",
        description = "Tequi-La-La Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["rooks_chain"] = {
        label = "Rooks Chain",
        description = "Rooks Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["deathrow_chain"] = {
        label = "Death Row Chain",
        description = "Death Row Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ferrari_chain"] = {
        label = "Ferrari Family Chain",
        description = "Ferrari Family Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["dynasty_chain"] = {
        label = "Dynasty Chain",
        description = "Dynasty Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["oni_chain"] = {
        label = "Oni Chain",
        description = "Oni Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["snowboiz_chain"] = {
        label = "Snow Boiz Chain",
        description = "Snow Boiz Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mint_mate_chain_3"] = {
        label = "Mint Mate Chain (Alternate)",
        description = "It's Mint Mate",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["boo_chain"] = {
        label = "BOO Chain",
        description = "BOO!",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["krazed_chain"] = {
        label = "Krazed Ridez Chain",
        description = "Krazed Ridez Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["snow_chain"] = {
        label = "Snow Chain",
        description = "Snow Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["rush_chain"] = {
        label = "Rush Chain",
        description = "Rush Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["meg_chain"] = {
        label = "Meg Chain",
        description = "Meg Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["olivia_chain"] = {
        label = "Vangelico Chain",
        description = "Vangelico Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["diamond_chain"] = {
        label = "Olivia Chain",
        description = "Olivia Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["britton_chain"] = {
        label = "Britton Chain",
        description = "Britton Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ssf_chain"] = {
        label = "SSF Chain",
        description = "SSF Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bigpoppa_chain"] = {
        label = "Big Poppa Chain",
        description = "Big Poppa Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["skull_chain"] = {
        label = "Thick Skull Chain",
        description = "Thick Skull Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pimpdaddy_chain"] = {
        label = "Pimp Daddy Chain",
        description = "Pimp Daddy Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["richardson_chain"] = {
        label = "Richardson Chain",
        description = "Richardson Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["king_chain"] = {
        label = "King Crown Chain",
        description = "King Crown Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["unicorn_chain"] = {
        label = "Unicorn Chain",
        description = "Unicorn Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["unity_chain"] = {
        label = "The Unity Chain",
        description = "The Unity Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pizzathis_chain"] = {
        label = "Pizza This Chain",
        description = "Pizza This Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ottos_chain"] = {
        label = "Otto's Chain",
        description = "Otto's Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["duck_chain"] = {
        label = "Duck Chain",
        description = "Duck Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["dani_chain"] = {
        label = "Dani Chain",
        description = "Dani Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["armytags_chain"] = {
        label = "Army Dog Tag Chain",
        description = "Army Dog Tag Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["donut_chain"] = {
        label = "Donut Chain",
        description = "Donut Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mustard_chain"] = {
        label = "Mustard Chain",
        description = "Mustard Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pandanoodle_chain"] = {
        label = "Panda Noodle Chain",
        description = "Panda Noodle Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["famli_chain"] = {
        label = "Teal’s Chain",
        description = "Teal’s Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["pgs_chain"] = {
        label = "PGS Chain",
        description = "PGS Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bdragon_chain"] = {
        label = "BlackDragon Chain",
        description = "BlackDragon Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["doublecup_chain"] = {
        label = "Double Cup Chain",
        description = "2 is a party!",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["axel_chain"] = {
        label = "Axel Chain",
        description = "Axel Chain and jewelry",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sage_chain"] = {
        label = "Bear Chain",
        description = "Bear Chain - Female",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["fredo_chain"] = {
        label = "Fredo Chain",
        description = "Fredo Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hajaar_chain"] = {
        label = "Hajaar Chain",
        description = "Hajaar Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["diablos_chain"] = {
        label = "Diablos Chain",
        description = "Diablos Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ninezero_chain"] = {
        label = "9Zero Chain",
        description = "9Zero Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["otf_chain"] = {
        label = "OTF Chain",
        description = "OTF Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["nolan_chain"] = {
        label = "Nolan Chain",
        description = "Nolan Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["olivia2_chain"] = {
        label = "Olivia Chain",
        description = "Olivia Chain - female",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["him_chain"] = {
        label = "I'm Him Chain",
        description = "I'm HIM Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["nos_chain"] = {
        label = "NOS Chain",
        description = "LIGHTNING FAST",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["eb13_chain"] = {
        label = "EB13 Chain",
        description = "EB13 Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["tracy_chain"] = {
        label = "Tracy Chain",
        description = "WOOP WOOP Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["oggramps_chain"] = {
        label = "OG Gramps Chain",
        description = "OG Gramps' Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["cloud9_chain"] = {
        label = "Cloud9 Chain",
        description = "Cloud9 Drifting Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["dex_chain"] = {
        label = "Dex Chain",
        description = "Dex Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["takia_chain"] = {
        label = "Takia Chain",
        description = "Takia Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["queen_chain"] = {
        label = "Queen Chain",
        description = "Queen Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["nines_chain"] = {
        label = "The 9's Chain",
        description = "9's Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["vell_chain"] = {
        label = "Vell's Chain",
        description = "Vell's Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["jrawefg_chain"] = {
        label = "FG Chain",
        description = "FG Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bco_chain"] = {
        label = "Broward Boy Chain",
        description = "Broward Boy Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["paletotuner_chain"] = {
        label = "Paleto Tuner Chain",
        description = "Paleto Tuner Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["illuminati_chain"] = {
        label = "Illuminati Chain",
        description = "Illuminati Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["produce_chain"] = {
        label = "Produce Crew Chain",
        description = "Produce Crew Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bandits_chain"] = {
        label = "Bandits Chain",
        description = "Bandits Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mafia_chain"] = {
        label = "Escobar Mafia Chain",
        description = "Escobar Mafia Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["one41_chain"] = {
        label = "141 Chain",
        description = "141 Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["streetlegends_chain"] = {
        label = "Street Legends Chain",
        description = "Street Legends Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["summer_chain"] = {
        label = "Summer Chain",
        description = "Summer Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["esb_chain"] = {
        label = "ESB Chain",
        description = "ESB Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["shlevin_chain"] = {
        label = "Shlevin Chain",
        description = "Shlevin Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["moneybag_chain"] = {
        label = "Money Bag Chain",
        description = "Money Bag Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["bluediamond_chain"] = {
        label = "Blue Diamond Chain",
        description = "Blue Diamond Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["wolfring_chain"] = {
        label = "G.S. Wolf Ring",
        description = "Wolf Ring",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["smiley_chain"] = {
        label = "Smiley Chain",
        description = "Why so serious?",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["him2_chain"] = {
        label = "I'm Him Chain 2",
        description = "I'm Him Chain 2",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["sbc_chain"] = {
        label = "SBC Chain",
        description = "SBC Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["fafo_chain"] = {
        label = "FAFO Chain",
        description = "FAFO Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["weed_chain"] = {
        label = "Weed Chain",
        description = "Weed Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["queenies_chain"] = {
        label = "Queenies Chain",
        description = "Queenies Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["hbdatsme_chain"] = {
        label = "HB Chain",
        description = "HBDATSME yo",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["dagoat_chain"] = {
        label = "DaGOAT Chain",
        description = "DaGOAT Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["billyhale_chain"] = {
        label = "Calilly Chain",
        description = "Calilly Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["ten13_chain"] = {
        label = "1013 Chain",
        description = "1013 Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["deathrow2_chain"] = {
        label = "Death Row Chain 2",
        description = "Death Row Chain 2",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["turtles_chain"] = {
        label = "Ice Ice Turtle Chain",
        description = "I like turtles",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["mostwanted_chain"] = {
        label = "Most Wanted Chain",
        description = "Most Wanted Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["spencer_chain"] = {
        label = "41 Spencer Chain",
        description = "41 Spencer Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["santamuerte_chain"] = {
        label = "Santa Muerte Chain",
        description = "Santa Muerte Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["egan_chain"] = {
        label = "Egan Chain",
        description = "Egan Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ["moneymind_chain"] = {
        label = "Money on the Mind Chain",
        description = "Money on the Mind Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ['rlg_chain'] = {
        label = "RLG Chain",
        description = "RLG Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ['lss_chain'] = {
        label = "LSS Chain",
        description = "LSS Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ['pepega_chain'] = {
        label = "Pepega Chain",
        description = "Pepega Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ['lust_chain'] = {
        label = "Lust Chain",
        description = "Lust Chain",
        weight = 0.0,
        rarity = 4,
        degrade = nil,
        client = {},
        server = {}
    },
    ['garbage'] = {
        label = 'Garbage',
    },
    ['keyfob'] = {
        label = 'Key Fob',
        weight = 50,
        stack = false,
        close = true,
        description = 'Keyfobs to open doors remotely.',
        consume = 0,
        client = {
            export = 'ox_doorlock.useKeyfob'
        }
    },
}
