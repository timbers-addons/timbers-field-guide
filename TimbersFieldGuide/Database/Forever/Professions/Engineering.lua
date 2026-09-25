local _, TFG = ...

TFG.ENGINEERING_FOREVER = {
    [1] = {
        {
            spell_id = 3920,
            name = "Crafted Light Shot",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 8067, qty = 200 },
            materials = {
                { item_id = 4357, qty = 1 },
                { item_id = 2840, qty = 1 },
            },
            levels = { 1, 30, 45, 60 },
        },
        {
            spell_id = 4036,
            name = "Engineering",
            categories = { "Profession Training" },
            icon = "trade_engineering",
            source = {
                {
                    type = "Trainer",
                    cost = 10,
                },
            },
            levels = { 1 },
            cap = 75,
        },
        {
            spell_id = 3918,
            name = "Rough Blasting Powder",
            categories = { "Parts" },
            icon = "inv_misc_dust_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4357, qty = 1 },
            materials = {
                { item_id = 2835, qty = 1 },
            },
            levels = { 1, 20, 30, 40 },
        },
        {
            spell_id = 3919,
            name = "Rough Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4358, qty = 2 },
            materials = {
                { item_id = 4357, qty = 1 },
                { item_id = 2589, qty = 1 },
            },
            levels = { 1, 30, 45, 60 },
        },
    },
    [20] = {
        {
            spell_id = 1230656,
            name = "Reagent Bot",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_misc_enggizmos_13",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            product = { item_id = 279950, qty = 1 },
            materials = {
                { item_id = 4359, qty = 1 },
                { item_id = 4361, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [25] = {
        {
            spell_id = 1266905,
            name = "SAF-T Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Vendor",
                    item_id = 264202,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260792, qty = 1 },
            materials = {
                { item_id = 4357, qty = 2 },
                { item_id = 2589, qty = 1 },
            },
            levels = { 25, 25, 30, 35 },
        },
        {
            spell_id = 1266893,
            name = "SAF-T Tabs",
            categories = { "Parts" },
            icon = "inv_misc_punchcards_white",
            source = {
                {
                    type = "Vendor",
                    item_id = 264201,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260784, qty = 1 },
            materials = {
                { item_id = 2570, qty = 1 },
                { item_id = 249409, qty = 1 },
            },
            levels = { 25, 25, 27, 30 },
        },
    },
    [30] = {
        {
            spell_id = 3922,
            name = "Handful of Copper Bolts",
            categories = { "Parts" },
            icon = "inv_misc_gear_06",
            source = {
                {
                    type = "Trainer",
                    cost = 115,
                },
            },
            product = { item_id = 4359, qty = 1 },
            materials = {
                { item_id = 2840, qty = 1 },
            },
            levels = { 30, 45, 52, 60 },
        },
        {
            spell_id = 3923,
            name = "Rough Copper Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_09",
            source = {
                {
                    type = "Trainer",
                    cost = 130,
                },
            },
            product = { item_id = 4360, qty = 2 },
            materials = {
                { item_id = 2840, qty = 1 },
                { item_id = 4359, qty = 1 },
                { item_id = 4357, qty = 2 },
                { item_id = 2589, qty = 1 },
            },
            levels = { 30, 60, 75, 90 },
        },
    },
    [50] = {
        {
            spell_id = 7430,
            name = "Arclight Spanner",
            categories = { "Parts" },
            icon = "inv_misc_wrench_01",
            source = {
                {
                    type = "Trainer",
                    cost = 150,
                },
            },
            product = { item_id = 6219, qty = 1 },
            materials = {
                { item_id = 2840, qty = 6 },
            },
            levels = { 50, 70, 80, 90 },
        },
        {
            spell_id = 3924,
            name = "Copper Tube",
            categories = { "Parts" },
            icon = "inv_gizmo_pipe_02",
            source = {
                {
                    type = "Trainer",
                    cost = 150,
                },
            },
            product = { item_id = 4361, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 50, 80, 95, 110 },
        },
        {
            spell_id = 3925,
            name = "Rough Boomstick",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_03",
            source = {
                {
                    type = "Trainer",
                    cost = 150,
                },
            },
            product = { item_id = 4362, qty = 1 },
            materials = {
                { item_id = 4361, qty = 1 },
                { item_id = 4359, qty = 1 },
                { item_id = 4399, qty = 1 },
            },
            levels = { 50, 80, 95, 110 },
        },
        {
            spell_id = 4037,
            name = "Engineering",
            categories = { "Profession Training" },
            icon = "trade_engineering",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 50 },
            cap = 150,
        },
    },
    [55] = {
        {
            spell_id = 1266906,
            name = "SAF-T Copper Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_09",
            source = {
                {
                    type = "Vendor",
                    item_id = 264203,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260793, qty = 1 },
            materials = {
                { item_id = 2840, qty = 1 },
                { item_id = 4359, qty = 1 },
                { item_id = 4357, qty = 2 },
                { item_id = 2570, qty = 1 },
                { item_id = 260784, qty = 2 },
            },
            levels = { 55, 55, 60, 65 },
        },
    },
    [60] = {
        {
            spell_id = 3977,
            name = "Crude Scope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Trainer",
                    cost = 200,
                },
            },
            product = { item_id = 4405, qty = 1 },
            materials = {
                { item_id = 4361, qty = 1 },
                { item_id = 774, qty = 1 },
                { item_id = 4359, qty = 1 },
            },
            levels = { 60, 90, 105, 120 },
        },
    },
    [65] = {
        {
            spell_id = 3926,
            name = "Copper Modulator",
            categories = { "Parts" },
            icon = "inv_gizmo_03",
            source = {
                {
                    type = "Trainer",
                    cost = 225,
                },
            },
            product = { item_id = 4363, qty = 1 },
            materials = {
                { item_id = 4359, qty = 2 },
                { item_id = 2840, qty = 1 },
                { item_id = 2589, qty = 2 },
            },
            levels = { 65, 95, 110, 125 },
        },
        {
            spell_id = 1302161,
            name = "Harvester Override Signalcaster",
            categories = { "Consumable Devices" },
            icon = "inv_gizmo_goblingtonkcontroller",
            source = {
                {
                    type = "Item",
                    item_id = 277470,
                },
            },
            product = { item_id = 277132, qty = 1 },
            materials = {
                { item_id = 255007, qty = 4 },
                { item_id = 4363, qty = 2 },
                { item_id = 4405, qty = 1 },
            },
            levels = { 65, 65, 72, 80 },
        },
    },
    [75] = {
        {
            spell_id = 3929,
            name = "Coarse Blasting Powder",
            categories = { "Parts" },
            icon = "inv_misc_dust_02",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 4364, qty = 1 },
            materials = {
                { item_id = 2836, qty = 1 },
            },
            levels = { 75, 85, 90, 95 },
        },
        {
            spell_id = 3931,
            name = "Coarse Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 4365, qty = 2 },
            materials = {
                { item_id = 4364, qty = 3 },
                { item_id = 2589, qty = 1 },
            },
            levels = { 75, 90, 97, 105 },
        },
        {
            spell_id = 3930,
            name = "Crafted Heavy Shot",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_02",
            source = {
                {
                    type = "Trainer",
                    cost = 250,
                },
            },
            product = { item_id = 8068, qty = 200 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2840, qty = 1 },
            },
            levels = { 75, 85, 90, 95 },
        },
        {
            spell_id = 3928,
            name = "Mechanical Squirrel",
            categories = { "Pets and Guardians" },
            icon = "inv_crate_01",
            source = {
                {
                    type = "Item",
                    item_id = 4408,
                },
            },
            product = { item_id = 4401, qty = 1 },
            materials = {
                { item_id = 4363, qty = 1 },
                { item_id = 4359, qty = 1 },
                { item_id = 2840, qty = 1 },
                { item_id = 774, qty = 2 },
            },
            levels = { 75, 105, 120, 135 },
        },
    },
    [85] = {
        {
            spell_id = 1317958,
            name = "Satchel of Copper Bombs",
            categories = { "Ranged Weapons" },
            icon = "inv_misc_bag_05",
            source = {
                {
                    type = "Vendor",
                    item_id = 285285,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 285275, qty = 1 },
            materials = {
                { item_id = 4360, qty = 20 },
                { item_id = 2318, qty = 6 },
                { item_id = 4359, qty = 4 },
            },
            levels = { 85, 90, 92, 95 },
        },
        {
            spell_id = 3932,
            name = "Target Dummy",
            categories = { "Pets and Guardians" },
            icon = "inv_crate_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4366, qty = 1 },
            materials = {
                { item_id = 4363, qty = 1 },
                { item_id = 4359, qty = 2 },
                { item_id = 2841, qty = 1 },
                { item_id = 2592, qty = 1 },
            },
            levels = { 85, 115, 130, 145 },
        },
    },
    [90] = {
        {
            spell_id = 3973,
            name = "Silver Contact",
            categories = { "Parts" },
            icon = "inv_ingot_04",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4404, qty = 5 },
            materials = {
                { item_id = 2842, qty = 1 },
            },
            levels = { 90, 110, 125, 140 },
        },
    },
    [100] = {
        {
            spell_id = 8339,
            name = "EZ-Thro Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Item",
                    item_id = 6716,
                },
            },
            product = { item_id = 6714, qty = 2 },
            materials = {
                { item_id = 4364, qty = 3 },
                { item_id = 2589, qty = 1 },
                { item_id = 260794, qty = 1 },
            },
            levels = { 100, 115, 122, 130 },
        },
        {
            spell_id = 1266907,
            name = "EZ-Thro Wrap",
            categories = { "Parts" },
            icon = "inv_misc_giftwrap_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 264204,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260794, qty = 1 },
            materials = {
                { item_id = 2592, qty = 1 },
                { item_id = 249410, qty = 1 },
            },
            levels = { 100, 100, 102, 105 },
        },
        {
            spell_id = 3934,
            name = "Flying Tiger Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4368, qty = 1 },
            materials = {
                { item_id = 2318, qty = 6 },
                { item_id = 818, qty = 2 },
            },
            levels = { 100, 130, 145, 160 },
        },
        {
            spell_id = 8334,
            name = "Practice Lock",
            categories = { "Consumable Devices" },
            icon = "inv_box_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6712, qty = 1 },
            materials = {
                { item_id = 2841, qty = 1 },
                { item_id = 4359, qty = 2 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 100, 115, 122, 130 },
        },
        {
            spell_id = 3933,
            name = "Small Seaforium Charge",
            categories = { "Explosives" },
            icon = "inv_misc_urn_01",
            source = {
                {
                    type = "Item",
                    item_id = 4409,
                },
            },
            product = { item_id = 4367, qty = 1 },
            materials = {
                { item_id = 4364, qty = 2 },
                { item_id = 4363, qty = 1 },
                { item_id = 2318, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 100, 130, 145, 160 },
        },
    },
    [105] = {
        {
            spell_id = 3938,
            name = "Bronze Tube",
            categories = { "Parts" },
            icon = "inv_gizmo_pipe_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4371, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 2880, qty = 1 },
            },
            levels = { 105, 105, 130, 155 },
        },
        {
            spell_id = 3936,
            name = "Deadly Blunderbuss",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4369, qty = 1 },
            materials = {
                { item_id = 4361, qty = 2 },
                { item_id = 4359, qty = 4 },
                { item_id = 4399, qty = 1 },
                { item_id = 2319, qty = 2 },
            },
            levels = { 105, 130, 142, 155 },
        },
        {
            spell_id = 3937,
            name = "Large Copper Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4370, qty = 3 },
            materials = {
                { item_id = 2840, qty = 3 },
                { item_id = 4364, qty = 4 },
                { item_id = 4404, qty = 1 },
            },
            levels = { 105, 105, 130, 155 },
        },
    },
    [110] = {
        {
            spell_id = 3978,
            name = "Standard Scope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4406, qty = 1 },
            materials = {
                { item_id = 4371, qty = 1 },
                { item_id = 1206, qty = 1 },
            },
            levels = { 110, 135, 147, 160 },
        },
    },
    [120] = {
        {
            spell_id = 3939,
            name = "Lovingly Crafted Boomstick",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Item",
                    item_id = 13309,
                },
            },
            product = { item_id = 4372, qty = 1 },
            materials = {
                { item_id = 4371, qty = 2 },
                { item_id = 4359, qty = 2 },
                { item_id = 4400, qty = 1 },
                { item_id = 1206, qty = 3 },
            },
            levels = { 120, 145, 157, 170 },
        },
        {
            spell_id = 3940,
            name = "Shadow Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 4410,
                },
            },
            product = { item_id = 4373, qty = 1 },
            materials = {
                { item_id = 2319, qty = 4 },
                { item_id = 1210, qty = 2 },
            },
            levels = { 120, 145, 157, 170 },
        },
        {
            spell_id = 3941,
            name = "Small Bronze Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_09",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4374, qty = 2 },
            materials = {
                { item_id = 4364, qty = 4 },
                { item_id = 2841, qty = 2 },
                { item_id = 4404, qty = 1 },
                { item_id = 2592, qty = 1 },
            },
            levels = { 120, 120, 145, 170 },
        },
    },
    [125] = {
        {
            spell_id = 3947,
            name = "Crafted Solid Shot",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 8069, qty = 200 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 2841, qty = 1 },
            },
            levels = { 125, 125, 135, 145 },
        },
        {
            spell_id = 3944,
            name = "Flame Deflector",
            categories = { "Gadgets" },
            icon = "inv_gizmo_01",
            source = {
                {
                    type = "Item",
                    item_id = 4411,
                },
            },
            product = { item_id = 4376, qty = 1 },
            materials = {
                { item_id = 4375, qty = 1 },
                { item_id = 4402, qty = 1 },
            },
            levels = { 125, 125, 150, 175 },
        },
        {
            spell_id = 9269,
            name = "Gnomish Universal Remote",
            categories = { "Gadgets" },
            icon = "inv_misc_pocketwatch_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 7560,
                    cost = 1200,
                    location = "Gearcutter Cogspinner, Ironforge",
                },
            },
            product = { item_id = 7506, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 4375, qty = 1 },
                { item_id = 814, qty = 2 },
                { item_id = 818, qty = 1 },
                { item_id = 774, qty = 1 },
            },
            levels = { 125, 150, 162, 175 },
        },
        {
            spell_id = 3945,
            name = "Heavy Blasting Powder",
            categories = { "Parts" },
            icon = "inv_misc_dust_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4377, qty = 1 },
            materials = {
                { item_id = 2838, qty = 1 },
            },
            levels = { 125, 125, 135, 145 },
        },
        {
            spell_id = 3946,
            name = "Heavy Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4378, qty = 3 },
            materials = {
                { item_id = 4377, qty = 2 },
                { item_id = 2592, qty = 1 },
            },
            levels = { 125, 125, 135, 145 },
        },
        {
            spell_id = 26416,
            name = "Small Blue Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_blue",
            source = {
                {
                    type = "Item",
                    item_id = 21724,
                },
            },
            product = { item_id = 21558, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 26417,
            name = "Small Green Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_green",
            source = {
                {
                    type = "Item",
                    item_id = 21725,
                },
            },
            product = { item_id = 21559, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 1319154,
            name = "Small Purple Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_purple",
            source = {
                {
                    type = "Item",
                    item_id = 286076,
                },
            },
            product = { item_id = 21560, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 26418,
            name = "Small Red Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_red",
            source = {
                {
                    type = "Item",
                    item_id = 21726,
                },
            },
            product = { item_id = 21557, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 1319155,
            name = "Small White Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_white",
            source = {
                {
                    type = "Item",
                    item_id = 286077,
                },
            },
            product = { item_id = 21561, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 1319156,
            name = "Small Yellow Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmall_yellow",
            source = {
                {
                    type = "Item",
                    item_id = 286078,
                },
            },
            product = { item_id = 21562, qty = 5 },
            materials = {
                { item_id = 4364, qty = 1 },
                { item_id = 2319, qty = 1 },
            },
            levels = { 125, 125, 137, 150 },
        },
        {
            spell_id = 3942,
            name = "Whirring Bronze Gizmo",
            categories = { "Parts" },
            icon = "inv_gizmo_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4375, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 2592, qty = 1 },
            },
            levels = { 125, 125, 150, 175 },
        },
        {
            spell_id = 4038,
            name = "Engineering",
            categories = { "Profession Training" },
            icon = "trade_engineering",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 125 },
            cap = 225,
        },
    },
    [130] = {
        {
            spell_id = 1266908,
            name = "EZ-Thro Copper Bomb XL",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 264205,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260795, qty = 1 },
            materials = {
                { item_id = 2840, qty = 3 },
                { item_id = 4364, qty = 4 },
                { item_id = 4404, qty = 1 },
                { item_id = 260794, qty = 1 },
            },
            levels = { 130, 130, 155, 180 },
        },
        {
            spell_id = 3949,
            name = "Silver-plated Shotgun",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4379, qty = 1 },
            materials = {
                { item_id = 4371, qty = 2 },
                { item_id = 4375, qty = 2 },
                { item_id = 4400, qty = 1 },
                { item_id = 2842, qty = 3 },
            },
            levels = { 130, 155, 167, 180 },
        },
    },
    [135] = {
        {
            spell_id = 6458,
            name = "Ornate Spyglass",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 5507, qty = 1 },
            materials = {
                { item_id = 4371, qty = 2 },
                { item_id = 4375, qty = 2 },
                { item_id = 4363, qty = 1 },
                { item_id = 1206, qty = 1 },
            },
            levels = { 135, 160, 172, 185 },
        },
        {
            spell_id = 424641,
            name = "Shredder Autosalvage Unit",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_12",
            source = {
                {
                    type = "Item",
                    item_id = 210178,
                },
            },
            product = { item_id = 210147, qty = 1 },
            materials = {
                { item_id = 4382, qty = 1 },
                { item_id = 4375, qty = 2 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 135, 135, 140, 145 },
        },
    },
    [140] = {
        {
            spell_id = 3950,
            name = "Big Bronze Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4380, qty = 3 },
            materials = {
                { item_id = 4377, qty = 2 },
                { item_id = 2841, qty = 3 },
                { item_id = 4404, qty = 1 },
            },
            levels = { 140, 140, 165, 190 },
        },
        {
            spell_id = 1286796,
            name = "Hoof-Shaped Foot Pedal",
            categories = { "Consumable Devices" },
            icon = "inv_blacksmith_leystonehoofplates_orange",
            source = {
                {
                    type = "Item",
                    item_id = 269903,
                },
            },
            product = { item_id = 269902, qty = 1 },
            materials = {
                { item_id = 4387, qty = 3 },
                { item_id = 4382, qty = 2 },
                { item_id = 4389, qty = 1 },
                { item_id = 10558, qty = 1 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 140, 150, 155, 160 },
        },
        {
            spell_id = 3952,
            name = "Minor Recombobulator",
            categories = { "Gadgets" },
            icon = "inv_gizmo_07",
            source = {
                {
                    type = "Item",
                    item_id = 14639,
                },
            },
            product = { item_id = 4381, qty = 1 },
            materials = {
                { item_id = 4371, qty = 1 },
                { item_id = 4375, qty = 2 },
                { item_id = 2319, qty = 2 },
                { item_id = 1206, qty = 1 },
            },
            levels = { 140, 165, 177, 190 },
        },
        {
            spell_id = 1263034,
            name = "Repair Bot",
            categories = { "Camping" },
            icon = "inv_robotpet",
            source = {
                {
                    type = "Item",
                    item_id = 273092,
                },
            },
            product = { item_id = 279949, qty = 1 },
            materials = {
                { item_id = 4375, qty = 2 },
                { item_id = 4371, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [145] = {
        {
            spell_id = 3953,
            name = "Bronze Framework",
            categories = { "Parts" },
            icon = "inv_gizmo_bronzeframework_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4382, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 2319, qty = 1 },
                { item_id = 2592, qty = 1 },
            },
            levels = { 145, 145, 170, 195 },
        },
        {
            spell_id = 3954,
            name = "Moonsight Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_06",
            source = {
                {
                    type = "Item",
                    item_id = 4412,
                },
            },
            product = { item_id = 4383, qty = 1 },
            materials = {
                { item_id = 4371, qty = 3 },
                { item_id = 4375, qty = 3 },
                { item_id = 4400, qty = 1 },
                { item_id = 1705, qty = 2 },
            },
            levels = { 145, 170, 182, 195 },
        },
        {
            spell_id = 1266909,
            name = "No Slip SAF-T Padding",
            categories = { "Parts" },
            icon = "inv_misc_leatherscrap_11",
            source = {
                {
                    type = "Vendor",
                    item_id = 264206,
                    currencies = {
                        { currency_id = 3402, qty = 45, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                },
            },
            product = { item_id = 260796, qty = 1 },
            materials = {
                { item_id = 4234, qty = 1 },
                { item_id = 249430, qty = 1 },
            },
            levels = { 145, 145, 147, 150 },
        },
        {
            spell_id = 1266910,
            name = "SAF-T Bronze Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_09",
            source = {
                {
                    type = "Item",
                    item_id = 264207,
                },
            },
            product = { item_id = 260797, qty = 1 },
            materials = {
                { item_id = 4364, qty = 4 },
                { item_id = 2841, qty = 2 },
                { item_id = 4404, qty = 1 },
                { item_id = 2592, qty = 1 },
                { item_id = 260796, qty = 1 },
            },
            levels = { 145, 145, 170, 195 },
        },
    },
    [150] = {
        {
            spell_id = 9271,
            name = "Aquadynamic Fish Attractor",
            categories = { "Consumable Devices" },
            icon = "inv_misc_food_26",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6533, qty = 3 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 6530, qty = 1 },
                { item_id = 4364, qty = 1 },
            },
            levels = { 150, 150, 160, 170 },
        },
        {
            spell_id = 23067,
            name = "Blue Firework",
            categories = { "Fireworks" },
            icon = "spell_ice_magicdamage",
            source = {
                {
                    type = "Vendor",
                    item_id = 18649,
                    cost = 1800,
                    location = "Gearcutter Cogspinner, Ironforge",
                },
            },
            product = { item_id = 9312, qty = 3 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 150, 150, 162, 175 },
        },
        {
            spell_id = 3955,
            name = "Explosive Sheep",
            categories = { "Explosives" },
            icon = "spell_nature_polymorph",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4384, qty = 1 },
            materials = {
                { item_id = 4382, qty = 1 },
                { item_id = 4375, qty = 1 },
                { item_id = 4377, qty = 2 },
                { item_id = 2592, qty = 2 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 12584,
            name = "Gold Power Core",
            categories = { "Parts" },
            icon = "inv_battery_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10558, qty = 3 },
            materials = {
                { item_id = 3577, qty = 1 },
            },
            levels = { 150, 150, 170, 190 },
        },
        {
            spell_id = 23068,
            name = "Green Firework",
            categories = { "Fireworks" },
            icon = "spell_nature_abolishmagic",
            source = {
                {
                    type = "Item",
                    item_id = 18648,
                },
            },
            product = { item_id = 9313, qty = 3 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 150, 150, 162, 175 },
        },
        {
            spell_id = 3956,
            name = "Green Tinted Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4385, qty = 1 },
            materials = {
                { item_id = 2319, qty = 4 },
                { item_id = 1206, qty = 2 },
                { item_id = 4368, qty = 1 },
            },
            levels = { 150, 175, 187, 200 },
        },
        {
            spell_id = 23066,
            name = "Red Firework",
            categories = { "Fireworks" },
            icon = "spell_fire_fireball02",
            source = {
                {
                    type = "Item",
                    item_id = 18647,
                },
            },
            product = { item_id = 9318, qty = 3 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 150, 150, 162, 175 },
        },
        {
            spell_id = 1266911,
            name = "SAF-T Jumbo Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Item",
                    item_id = 264208,
                },
            },
            product = { item_id = 260798, qty = 1 },
            materials = {
                { item_id = 4377, qty = 2 },
                { item_id = 2592, qty = 1 },
                { item_id = 260796, qty = 1 },
            },
            levels = { 150, 150, 160, 170 },
        },
    },
    [155] = {
        {
            spell_id = 3957,
            name = "Ice Deflector",
            categories = { "Gadgets" },
            icon = "inv_gizmo_01",
            source = {
                {
                    type = "Item",
                    item_id = 13308,
                },
            },
            product = { item_id = 4386, qty = 1 },
            materials = {
                { item_id = 4375, qty = 1 },
                { item_id = 3829, qty = 1 },
            },
            levels = { 155, 175, 185, 195 },
        },
    },
    [160] = {
        {
            spell_id = 3959,
            name = "Discombobulator Ray",
            categories = { "Gadgets" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Item",
                    item_id = 4413,
                },
            },
            product = { item_id = 4388, qty = 1 },
            materials = {
                { item_id = 4375, qty = 3 },
                { item_id = 4306, qty = 2 },
                { item_id = 1529, qty = 1 },
                { item_id = 4371, qty = 1 },
            },
            levels = { 160, 180, 190, 200 },
        },
        {
            spell_id = 3958,
            name = "Iron Strut",
            categories = { "Parts" },
            icon = "inv_spear_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4387, qty = 1 },
            materials = {
                { item_id = 3575, qty = 2 },
            },
            levels = { 160, 160, 170, 180 },
        },
    },
    [165] = {
        {
            spell_id = 9273,
            name = "Goblin Jumper Cables",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_10",
            source = {
                {
                    type = "Item",
                    item_id = 7561,
                },
            },
            product = { item_id = 7148, qty = 1 },
            materials = {
                { item_id = 3575, qty = 6 },
                { item_id = 4375, qty = 2 },
                { item_id = 814, qty = 2 },
                { item_id = 4306, qty = 2 },
                { item_id = 1210, qty = 2 },
                { item_id = 7191, qty = 1 },
            },
            levels = { 165, 160, 180, 200 },
        },
        {
            spell_id = 3960,
            name = "Portable Bronze Mortar",
            categories = { "Explosives" },
            icon = "inv_musket_01",
            source = {
                {
                    type = "Item",
                    item_id = 4414,
                },
            },
            product = { item_id = 4403, qty = 1 },
            materials = {
                { item_id = 4371, qty = 4 },
                { item_id = 4387, qty = 1 },
                { item_id = 4377, qty = 4 },
                { item_id = 2319, qty = 4 },
            },
            levels = { 165, 185, 195, 205 },
        },
        {
            spell_id = 1317959,
            name = "Satchel of Bronze Bombs",
            categories = { "Ranged Weapons" },
            icon = "inv_misc_bag_09_black",
            source = {
                {
                    type = "Vendor",
                    item_id = 285286,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 285276, qty = 1 },
            materials = {
                { item_id = 4380, qty = 20 },
                { item_id = 2319, qty = 6 },
                { item_id = 4375, qty = 1 },
            },
            levels = { 165, 170, 172, 175 },
        },
    },
    [170] = {
        {
            spell_id = 3961,
            name = "Gyrochronatom",
            categories = { "Parts" },
            icon = "inv_misc_pocketwatch_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4389, qty = 1 },
            materials = {
                { item_id = 3575, qty = 1 },
                { item_id = 10558, qty = 1 },
            },
            levels = { 170, 170, 190, 210 },
        },
    },
    [175] = {
        {
            spell_id = 12587,
            name = "Bright-Eye Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 10601,
                },
            },
            product = { item_id = 10499, qty = 1 },
            materials = {
                { item_id = 4234, qty = 6 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 175, 195, 205, 215 },
        },
        {
            spell_id = 1308180,
            name = "Clanking Cord",
            categories = { "Gadgets" },
            icon = "inv_belt_34",
            source = {
                {
                    type = "Vendor",
                    item_id = 280323,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280308, qty = 1 },
            materials = {
                { item_id = 4371, qty = 2 },
                { item_id = 4363, qty = 1 },
                { item_id = 2319, qty = 4 },
            },
            levels = { 175, 180, 182, 185 },
        },
        {
            spell_id = 3963,
            name = "Compact Harvest Reaper Kit",
            categories = { "Consumable Devices" },
            icon = "inv_helmet_08",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4391, qty = 1 },
            materials = {
                { item_id = 4387, qty = 2 },
                { item_id = 4382, qty = 1 },
                { item_id = 4389, qty = 2 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 175, 175, 195, 215 },
        },
        {
            spell_id = 1308179,
            name = "Gizmo Girdle",
            categories = { "Gadgets" },
            icon = "inv_belt_06",
            source = {
                {
                    type = "Vendor",
                    item_id = 280322,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280307, qty = 1 },
            materials = {
                { item_id = 4375, qty = 2 },
                { item_id = 4382, qty = 1 },
                { item_id = 2319, qty = 4 },
            },
            levels = { 175, 180, 182, 185 },
        },
        {
            spell_id = 12590,
            name = "Gyromatic Micro-Adjustor",
            categories = { "Parts" },
            icon = "inv_misc_screwdriver_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10498, qty = 1 },
            materials = {
                { item_id = 3859, qty = 4 },
            },
            levels = { 175, 175, 195, 215 },
        },
        {
            spell_id = 3962,
            name = "Iron Grenade",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_08",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4390, qty = 3 },
            materials = {
                { item_id = 3575, qty = 1 },
                { item_id = 4377, qty = 1 },
                { item_id = 4306, qty = 1 },
            },
            levels = { 175, 175, 195, 215 },
        },
        {
            spell_id = 26420,
            name = "Large Blue Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_blue",
            source = {
                {
                    type = "Item",
                    item_id = 21727,
                },
            },
            product = { item_id = 21589, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 26421,
            name = "Large Green Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_green",
            source = {
                {
                    type = "Item",
                    item_id = 21728,
                },
            },
            product = { item_id = 21590, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 1319157,
            name = "Large Purple Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_purple",
            source = {
                {
                    type = "Item",
                    item_id = 286079,
                },
            },
            product = { item_id = 21591, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 26422,
            name = "Large Red Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_red",
            source = {
                {
                    type = "Item",
                    item_id = 21729,
                },
            },
            product = { item_id = 21592, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 1319158,
            name = "Large White Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_white",
            source = {
                {
                    type = "Item",
                    item_id = 286080,
                },
            },
            product = { item_id = 21593, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 1319159,
            name = "Large Yellow Rocket",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelarge_yellow",
            source = {
                {
                    type = "Item",
                    item_id = 286081,
                },
            },
            product = { item_id = 21595, qty = 5 },
            materials = {
                { item_id = 4377, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 175, 175, 187, 200 },
        },
        {
            spell_id = 1266912,
            name = "SAF-T Bell",
            categories = { "Parts" },
            icon = "inv_misc_bell_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 264209,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 260799, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 249432, qty = 1 },
            },
            levels = { 175, 175, 177, 180 },
        },
        {
            spell_id = 1308182,
            name = "Serrated Strap",
            categories = { "Gadgets" },
            icon = "inv_belt_03",
            source = {
                {
                    type = "Item",
                    item_id = 280324,
                },
            },
            product = { item_id = 280309, qty = 1 },
            materials = {
                { item_id = 4363, qty = 2 },
                { item_id = 4371, qty = 1 },
                { item_id = 3575, qty = 1 },
            },
            levels = { 175, 180, 182, 185 },
        },
        {
            spell_id = 1266913,
            name = "Shafety Sheep",
            categories = { "Explosives" },
            icon = "ability_mage_improvedpolymorph",
            source = {
                {
                    type = "Item",
                    item_id = 264210,
                },
            },
            product = { item_id = 260800, qty = 1 },
            materials = {
                { item_id = 4382, qty = 1 },
                { item_id = 4375, qty = 1 },
                { item_id = 4377, qty = 2 },
                { item_id = 2592, qty = 2 },
                { item_id = 260799, qty = 1 },
            },
            levels = { 175, 200, 212, 225 },
        },
        {
            spell_id = 12585,
            name = "Solid Blasting Powder",
            categories = { "Parts" },
            icon = "inv_misc_powder_black",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10505, qty = 1 },
            materials = {
                { item_id = 7912, qty = 2 },
            },
            levels = { 175, 175, 185, 195 },
        },
        {
            spell_id = 12586,
            name = "Solid Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10507, qty = 2 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4306, qty = 1 },
            },
            levels = { 175, 175, 185, 195 },
        },
        {
            spell_id = 1308178,
            name = "Whimsical Waistwrap",
            categories = { "Gadgets" },
            icon = "inv_belt_06",
            source = {
                {
                    type = "Vendor",
                    item_id = 280321,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280306, qty = 1 },
            materials = {
                { item_id = 4382, qty = 2 },
                { item_id = 4375, qty = 1 },
                { item_id = 4305, qty = 2 },
            },
            levels = { 175, 180, 182, 185 },
        },
    },
    [180] = {
        {
            spell_id = 3979,
            name = "Accurate Scope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Vendor",
                    item_id = 13310,
                    cost = 2000,
                    location = "Mazk Snipeshot, Stranglethorn Vale",
                },
            },
            product = { item_id = 4407, qty = 1 },
            materials = {
                { item_id = 4371, qty = 1 },
                { item_id = 1529, qty = 1 },
                { item_id = 3864, qty = 1 },
            },
            levels = { 180, 200, 210, 220 },
        },
    },
    [185] = {
        {
            spell_id = 3965,
            name = "Advanced Target Dummy",
            categories = { "Pets and Guardians" },
            icon = "inv_crate_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4392, qty = 1 },
            materials = {
                { item_id = 4387, qty = 1 },
                { item_id = 4382, qty = 1 },
                { item_id = 4389, qty = 1 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 185, 185, 205, 225 },
        },
        {
            spell_id = 3966,
            name = "Craftsman's Monocle",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_44",
            source = {
                {
                    type = "Item",
                    item_id = 4415,
                },
            },
            product = { item_id = 4393, qty = 1 },
            materials = {
                { item_id = 4234, qty = 6 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 185, 205, 215, 225 },
        },
        {
            spell_id = 8243,
            name = "Flash Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_ammo_bullet_01",
            source = {
                {
                    type = "Item",
                    item_id = 6672,
                },
            },
            product = { item_id = 4852, qty = 1 },
            materials = {
                { item_id = 4611, qty = 1 },
                { item_id = 4377, qty = 1 },
                { item_id = 4306, qty = 1 },
            },
            levels = { 185, 185, 205, 225 },
        },
    },
    [190] = {
        {
            spell_id = 3967,
            name = "Big Iron Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 4394, qty = 2 },
            materials = {
                { item_id = 3575, qty = 3 },
                { item_id = 4377, qty = 3 },
                { item_id = 4404, qty = 1 },
            },
            levels = { 190, 190, 210, 230 },
        },
        {
            spell_id = 1286792,
            name = "Centaur Banner Deployment Device",
            categories = { "Devices" },
            icon = "achievement_bg_killflagcarriers_grabflag_capit",
            source = {
                {
                    type = "Item",
                    item_id = 269901,
                },
            },
            product = { item_id = 269900, qty = 1 },
            materials = {
                { item_id = 4387, qty = 6 },
                { item_id = 4389, qty = 2 },
                { item_id = 10558, qty = 4 },
                { item_id = 4234, qty = 30 },
            },
            levels = { 190, 190, 197, 205 },
        },
        {
            spell_id = 1266915,
            name = "EZ-Thro Bronze Mortar",
            categories = { "Explosives" },
            icon = "inv_musket_01",
            source = {
                {
                    type = "Item",
                    item_id = 264212,
                },
            },
            product = { item_id = 260802, qty = 1 },
            materials = {
                { item_id = 4371, qty = 4 },
                { item_id = 4387, qty = 1 },
                { item_id = 4377, qty = 4 },
                { item_id = 2319, qty = 4 },
                { item_id = 260801, qty = 1 },
            },
            levels = { 190, 210, 220, 230 },
        },
        {
            spell_id = 1266914,
            name = "EZ-Thro Fireproof Fuse",
            categories = { "Parts" },
            icon = "inv_jewelcrafting_delicatecopperwire",
            source = {
                {
                    type = "Vendor",
                    item_id = 264211,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 260801, qty = 1 },
            materials = {
                { item_id = 4404, qty = 1 },
                { item_id = 249428, qty = 1 },
            },
            levels = { 190, 190, 192, 195 },
        },
        {
            spell_id = 21940,
            name = "Snowmaster 9000",
            categories = { "Devices" },
            icon = "spell_frost_windwalkon",
            source = {
                {
                    type = "Item",
                    item_id = 17720,
                },
            },
            product = { item_id = 17716, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 4389, qty = 4 },
                { item_id = 17202, qty = 4 },
                { item_id = 3829, qty = 1 },
            },
            levels = { 190, 190, 210, 230 },
        },
    },
    [195] = {
        {
            spell_id = 3968,
            name = "Goblin Land Mine",
            categories = { "Explosives" },
            icon = "inv_shield_08",
            source = {
                {
                    type = "Item",
                    item_id = 4416,
                },
            },
            product = { item_id = 4395, qty = 1 },
            materials = {
                { item_id = 4377, qty = 3 },
                { item_id = 3575, qty = 2 },
                { item_id = 4389, qty = 1 },
            },
            levels = { 195, 215, 225, 235 },
        },
        {
            spell_id = 12589,
            name = "Mithril Tube",
            categories = { "Parts" },
            icon = "inv_musket_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10559, qty = 1 },
            materials = {
                { item_id = 3860, qty = 3 },
            },
            levels = { 195, 195, 215, 235 },
        },
    },
    [200] = {
        {
            spell_id = 1308184,
            name = "Bent Goggles",
            categories = { "Leather Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 280326,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280311, qty = 1 },
            materials = {
                { item_id = 5507, qty = 1 },
                { item_id = 4389, qty = 1 },
                { item_id = 4234, qty = 8 },
            },
            levels = { 200, 205, 207, 210 },
        },
        {
            spell_id = 1308186,
            name = "Dented Goggles",
            categories = { "Plate Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 280328,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280313, qty = 1 },
            materials = {
                { item_id = 5507, qty = 1 },
                { item_id = 4389, qty = 1 },
                { item_id = 3860, qty = 2 },
            },
            levels = { 200, 205, 207, 210 },
        },
        {
            spell_id = 23069,
            name = "EZ-Thro Dynamite II",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_03",
            source = {
                {
                    type = "Vendor",
                    item_id = 18650,
                    cost = 5000,
                    location = "Fizzix Boomshot, Riverglades",
                },
                {
                    type = "Vendor",
                    item_id = 18650,
                    cost = 5000,
                    location = "Blizrik Buckshot, Tanaris",
                },
            },
            product = { item_id = 18588, qty = 1 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4306, qty = 1 },
                { item_id = 260801, qty = 1 },
            },
            levels = { 200, 200, 210, 220 },
        },
        {
            spell_id = 1266916,
            name = "EZ-Thro Grenade",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Item",
                    item_id = 264213,
                },
            },
            product = { item_id = 260803, qty = 1 },
            materials = {
                { item_id = 3575, qty = 1 },
                { item_id = 4377, qty = 1 },
                { item_id = 4306, qty = 1 },
                { item_id = 260801, qty = 1 },
            },
            levels = { 200, 200, 220, 240 },
        },
        {
            spell_id = 1308183,
            name = "Floppy Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 280325,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280310, qty = 1 },
            materials = {
                { item_id = 5507, qty = 1 },
                { item_id = 4389, qty = 1 },
                { item_id = 4339, qty = 4 },
            },
            levels = { 200, 205, 207, 210 },
        },
        {
            spell_id = 3971,
            name = "Gnomish Cloaking Device",
            categories = { "Gadgets" },
            icon = "inv_gizmo_01",
            source = {
                {
                    type = "Item",
                    item_id = 7742,
                },
            },
            product = { item_id = 4397, qty = 1 },
            materials = {
                { item_id = 4389, qty = 4 },
                { item_id = 1529, qty = 2 },
                { item_id = 1705, qty = 2 },
                { item_id = 3864, qty = 2 },
                { item_id = 7191, qty = 1 },
            },
            levels = { 200, 220, 230, 240 },
        },
        {
            spell_id = 3972,
            name = "Large Seaforium Charge",
            categories = { "Explosives" },
            icon = "inv_misc_urn_01",
            source = {
                {
                    type = "Item",
                    item_id = 4417,
                },
            },
            product = { item_id = 4398, qty = 1 },
            materials = {
                { item_id = 10505, qty = 2 },
                { item_id = 4234, qty = 2 },
                { item_id = 159, qty = 1 },
            },
            levels = { 200, 200, 220, 240 },
        },
        {
            spell_id = 3969,
            name = "Mechanical Dragonling",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_head_dragon_01",
            source = {
                {
                    type = "Item",
                    item_id = 13311,
                },
            },
            product = { item_id = 4396, qty = 1 },
            materials = {
                { item_id = 4382, qty = 1 },
                { item_id = 4387, qty = 4 },
                { item_id = 4389, qty = 4 },
                { item_id = 3864, qty = 2 },
                { item_id = 7191, qty = 1 },
            },
            levels = { 200, 220, 230, 240 },
        },
        {
            spell_id = 15255,
            name = "Mechanical Repair Kit",
            categories = { "Consumable Devices" },
            icon = "inv_gizmo_03",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 11590, qty = 1 },
            materials = {
                { item_id = 3860, qty = 1 },
                { item_id = 4338, qty = 1 },
                { item_id = 10505, qty = 1 },
            },
            levels = { 200, 200, 220, 240 },
        },
        {
            spell_id = 1308185,
            name = "Stuckbutton Goggles",
            categories = { "Mail Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Vendor",
                    item_id = 280327,
                    currencies = {
                        { currency_id = 3402, qty = 180, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Friendly" },
                },
            },
            product = { item_id = 280312, qty = 1 },
            materials = {
                { item_id = 5507, qty = 1 },
                { item_id = 4389, qty = 1 },
                { item_id = 4234, qty = 8 },
            },
            levels = { 200, 205, 207, 210 },
        },
        {
            spell_id = 12591,
            name = "Unstable Trigger",
            categories = { "Parts" },
            icon = "inv_battery_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10560, qty = 1 },
            materials = {
                { item_id = 3860, qty = 1 },
                { item_id = 4338, qty = 1 },
                { item_id = 10505, qty = 1 },
            },
            levels = { 200, 200, 220, 240 },
        },
        {
            spell_id = 12656,
            name = "Engineering",
            categories = { "Profession Training" },
            icon = "trade_engineering",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 200 },
            cap = 300,
        },
    },
    [205] = {
        {
            spell_id = 12594,
            name = "Fire Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10500, qty = 1 },
            materials = {
                { item_id = 4385, qty = 1 },
                { item_id = 3864, qty = 2 },
                { item_id = 7068, qty = 2 },
                { item_id = 4234, qty = 4 },
            },
            levels = { 205, 225, 235, 245 },
        },
        {
            spell_id = 12899,
            name = "Gnomish Shrink Ray",
            categories = { "Gadgets" },
            icon = "inv_gizmo_09",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10716, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 3860, qty = 4 },
                { item_id = 8151, qty = 4 },
                { item_id = 1529, qty = 2 },
            },
            levels = { 205, 225, 235, 245 },
        },
        {
            spell_id = 12718,
            name = "Goblin Construction Helmet",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_60",
            source = {
                {
                    type = "Trainer",
                    cost = 1500,
                },
            },
            product = { item_id = 10543, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 3864, qty = 1 },
                { item_id = 7068, qty = 4 },
            },
            levels = { 205, 225, 235, 245 },
        },
        {
            spell_id = 12717,
            name = "Goblin Mining Helmet",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_25",
            source = {
                {
                    type = "Item",
                    item_id = 221336,
                },
                {
                    type = "Trainer",
                    cost = 1500,
                },
            },
            product = { item_id = 10542, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 3864, qty = 1 },
                { item_id = 7067, qty = 4 },
            },
            levels = { 205, 225, 235, 245 },
        },
        {
            spell_id = 12715,
            name = "Goblin Rocket Fuel Recipe",
            categories = { "Parts" },
            icon = "inv_scroll_03",
            source = {
                {
                    type = "Trainer",
                    cost = 1000,
                },
            },
            product = { item_id = 10644, qty = 1 },
            materials = {
                { item_id = 10648, qty = 1 },
                { item_id = 10647, qty = 1 },
            },
            levels = { 205, 205, 205, 205 },
        },
        {
            spell_id = 12760,
            name = "Goblin Sapper Charge",
            categories = { "Explosives" },
            icon = "spell_fire_selfdestruct",
            source = {
                {
                    type = "Trainer",
                    cost = 1500,
                },
            },
            product = { item_id = 10646, qty = 1 },
            materials = {
                { item_id = 4338, qty = 1 },
                { item_id = 10505, qty = 3 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 205, 205, 225, 245 },
        },
        {
            spell_id = 12895,
            name = "Inlaid Mithril Cylinder Plans",
            categories = { "Parts" },
            icon = "inv_scroll_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10713, qty = 1 },
            materials = {
                { item_id = 10648, qty = 1 },
                { item_id = 10647, qty = 1 },
            },
            levels = { 205, 205, 205, 205 },
        },
        {
            spell_id = 15633,
            name = "Lil' Smoky",
            categories = { "Pets and Guardians" },
            icon = "inv_mechagon_spareparts",
            source = {
                {
                    type = "Item",
                    item_id = 11827,
                },
            },
            product = { item_id = 11826, qty = 1 },
            materials = {
                { item_id = 7075, qty = 1 },
                { item_id = 4389, qty = 2 },
                { item_id = 7191, qty = 1 },
                { item_id = 3860, qty = 2 },
                { item_id = 6037, qty = 1 },
            },
            levels = { 205, 205, 205, 205 },
        },
        {
            spell_id = 12595,
            name = "Mithril Blunderbuss",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10508, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 4400, qty = 1 },
                { item_id = 3860, qty = 4 },
                { item_id = 7068, qty = 2 },
            },
            levels = { 205, 225, 235, 245 },
        },
        {
            spell_id = 15628,
            name = "Pet Bombling",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_bomb_04",
            source = {
                {
                    type = "Item",
                    item_id = 11828,
                },
            },
            product = { item_id = 11825, qty = 1 },
            materials = {
                { item_id = 4394, qty = 1 },
                { item_id = 7077, qty = 1 },
                { item_id = 7191, qty = 1 },
                { item_id = 3860, qty = 6 },
            },
            levels = { 205, 205, 205, 205 },
        },
    },
    [210] = {
        {
            spell_id = 12597,
            name = "Deadly Scope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Item",
                    item_id = 10602,
                },
            },
            product = { item_id = 10546, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 7909, qty = 2 },
                { item_id = 4304, qty = 2 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 12897,
            name = "Gnomish Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10545, qty = 1 },
            materials = {
                { item_id = 10500, qty = 1 },
                { item_id = 10559, qty = 1 },
                { item_id = 10558, qty = 2 },
                { item_id = 8151, qty = 2 },
                { item_id = 4234, qty = 2 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 12902,
            name = "Gnomish Net-o-Matic Projector",
            categories = { "Gadgets" },
            icon = "inv_misc_net_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10720, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 10285, qty = 2 },
                { item_id = 4337, qty = 4 },
                { item_id = 10505, qty = 2 },
                { item_id = 3860, qty = 4 },
            },
            levels = { 210, 230, 240, 250 },
        },
        {
            spell_id = 12596,
            name = "Hi-Impact Mithril Slugs",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10512, qty = 200 },
            materials = {
                { item_id = 3860, qty = 1 },
                { item_id = 10505, qty = 1 },
            },
            levels = { 210, 210, 230, 250 },
        },
    },
    [215] = {
        {
            spell_id = 12903,
            name = "Gnomish Harm Prevention Belt",
            categories = { "Gadgets" },
            icon = "inv_belt_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10721, qty = 1 },
            materials = {
                { item_id = 7387, qty = 1 },
                { item_id = 3860, qty = 4 },
                { item_id = 6037, qty = 2 },
                { item_id = 10560, qty = 1 },
                { item_id = 7909, qty = 2 },
            },
            levels = { 215, 235, 245, 255 },
        },
        {
            spell_id = 12599,
            name = "Mithril Casing",
            categories = { "Parts" },
            icon = "inv_gizmo_mithrilcasing_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10561, qty = 1 },
            materials = {
                { item_id = 3860, qty = 3 },
            },
            levels = { 215, 215, 235, 255 },
        },
        {
            spell_id = 12603,
            name = "Mithril Frag Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10514, qty = 3 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 10505, qty = 1 },
            },
            levels = { 215, 215, 235, 255 },
        },
        {
            spell_id = 1266918,
            name = "SAF-T Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_01",
            source = {
                {
                    type = "Item",
                    item_id = 264215,
                },
            },
            product = { item_id = 260805, qty = 1 },
            materials = {
                { item_id = 3575, qty = 3 },
                { item_id = 4377, qty = 3 },
                { item_id = 4404, qty = 1 },
                { item_id = 260804, qty = 1 },
            },
            levels = { 215, 215, 230, 245 },
        },
        {
            spell_id = 1266917,
            name = "SAF-T Casing",
            categories = { "Parts" },
            icon = "inv_gizmo_mithrilcasing_02",
            source = {
                {
                    type = "Item",
                    item_id = 264214,
                },
            },
            product = { item_id = 260804, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 4234, qty = 1 },
            },
            levels = { 215, 215, 217, 220 },
        },
    },
    [220] = {
        {
            spell_id = 12607,
            name = "Catseye Ultra Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 10603,
                },
            },
            product = { item_id = 10501, qty = 1 },
            materials = {
                { item_id = 4304, qty = 4 },
                { item_id = 7909, qty = 2 },
                { item_id = 10592, qty = 1 },
            },
            levels = { 220, 240, 250, 260 },
        },
        {
            spell_id = 12614,
            name = "Mithril Heavy-bore Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Item",
                    item_id = 10604,
                },
            },
            product = { item_id = 10510, qty = 1 },
            materials = {
                { item_id = 10559, qty = 2 },
                { item_id = 10560, qty = 1 },
                { item_id = 4400, qty = 1 },
                { item_id = 3860, qty = 6 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 220, 240, 250, 260 },
        },
    },
    [225] = {
        {
            spell_id = 26423,
            name = "Blue Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_blue",
            source = {
                {
                    type = "Item",
                    item_id = 21730,
                },
            },
            product = { item_id = 21571, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 1266920,
            name = "Compact Critter Carrier",
            categories = { "Devices" },
            icon = "inv_box_birdcage_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 264217,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260807, qty = 1 },
            materials = {
                { item_id = 4234, qty = 10 },
                { item_id = 10559, qty = 10 },
                { item_id = 11175, qty = 2 },
                { item_id = 10558, qty = 1 },
            },
            levels = { 225, 230, 232, 235 },
        },
        {
            spell_id = 1266919,
            name = "Emergency Field Cloak",
            categories = { "Gadgets" },
            icon = "inv_misc_enggizmos_14",
            source = {
                {
                    type = "Vendor",
                    item_id = 264216,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260806, qty = 1 },
            materials = {
                { item_id = 4397, qty = 1 },
                { item_id = 260804, qty = 1 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 26442,
            name = "Firework Launcher",
            categories = { "Fireworks" },
            icon = "inv_musket_04",
            source = {
                {
                    type = "Item",
                    item_id = 21738,
                },
            },
            product = { item_id = 21569, qty = 1 },
            materials = {
                { item_id = 9060, qty = 2 },
                { item_id = 9061, qty = 2 },
                { item_id = 10560, qty = 2 },
                { item_id = 10561, qty = 1 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 12905,
            name = "Gnomish Rocket Boots",
            categories = { "Gadgets" },
            icon = "inv_boots_02",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10724, qty = 1 },
            materials = {
                { item_id = 10026, qty = 1 },
                { item_id = 10559, qty = 2 },
                { item_id = 4234, qty = 4 },
                { item_id = 10505, qty = 8 },
                { item_id = 4389, qty = 4 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 12716,
            name = "Goblin Mortar",
            categories = { "Explosives" },
            icon = "inv_musket_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10577, qty = 1 },
            materials = {
                { item_id = 10559, qty = 2 },
                { item_id = 3860, qty = 4 },
                { item_id = 10505, qty = 5 },
                { item_id = 10558, qty = 1 },
                { item_id = 7068, qty = 1 },
            },
            levels = { 225, 225, 235, 245 },
        },
        {
            spell_id = 26424,
            name = "Green Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_green",
            source = {
                {
                    type = "Item",
                    item_id = 21731,
                },
            },
            product = { item_id = 21574, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 12616,
            name = "Parachute Cloak",
            categories = { "Gadgets" },
            icon = "inv_misc_cape_11",
            source = {
                {
                    type = "Item",
                    item_id = 10606,
                },
            },
            product = { item_id = 10518, qty = 1 },
            materials = {
                { item_id = 4339, qty = 4 },
                { item_id = 10285, qty = 2 },
                { item_id = 10560, qty = 1 },
                { item_id = 10505, qty = 4 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 1319160,
            name = "Purple Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_purple",
            source = {
                {
                    type = "Item",
                    item_id = 286082,
                },
            },
            product = { item_id = 21575, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 26425,
            name = "Red Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_red",
            source = {
                {
                    type = "Item",
                    item_id = 21732,
                },
            },
            product = { item_id = 21576, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 12615,
            name = "Spellpower Goggles Xtreme",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 10605,
                },
            },
            product = { item_id = 10502, qty = 1 },
            materials = {
                { item_id = 4304, qty = 4 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 225, 245, 255, 265 },
        },
        {
            spell_id = 1319161,
            name = "White Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_white",
            source = {
                {
                    type = "Item",
                    item_id = 286083,
                },
            },
            product = { item_id = 21577, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 1319162,
            name = "Yellow Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilesmallcluster_yellow",
            source = {
                {
                    type = "Item",
                    item_id = 286084,
                },
            },
            product = { item_id = 21578, qty = 5 },
            materials = {
                { item_id = 10505, qty = 1 },
                { item_id = 4304, qty = 1 },
            },
            levels = { 225, 225, 237, 250 },
        },
        {
            spell_id = 8895,
            name = "Goblin Rocket Boots",
            categories = { "Gadgets" },
            icon = "inv_gizmo_rocketboot_01",
            source = {
                {
                    type = "Item",
                    item_id = 7192,
                },
                {
                    type = "Trainer",
                    cost = 2200,
                },
            },
            product = { item_id = 7189, qty = 1 },
            materials = {
                { item_id = 10026, qty = 1 },
                { item_id = 10559, qty = 2 },
                { item_id = 4234, qty = 4 },
                { item_id = 9061, qty = 2 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 225, 245, 255, 265 },
        },
    },
    [230] = {
        {
            spell_id = 12617,
            name = "Deepdive Helmet",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_49",
            source = {
                {
                    type = "Item",
                    item_id = 10607,
                },
            },
            product = { item_id = 10506, qty = 1 },
            materials = {
                { item_id = 3860, qty = 8 },
                { item_id = 10561, qty = 1 },
                { item_id = 6037, qty = 1 },
                { item_id = 818, qty = 4 },
                { item_id = 774, qty = 4 },
            },
            levels = { 230, 250, 260, 270 },
        },
        {
            spell_id = 12906,
            name = "Gnomish Battle Chicken",
            categories = { "Gadgets" },
            icon = "spell_magic_polymorphchicken",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10725, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 6037, qty = 6 },
                { item_id = 3860, qty = 6 },
                { item_id = 9060, qty = 2 },
                { item_id = 10558, qty = 1 },
                { item_id = 1529, qty = 2 },
            },
            levels = { 230, 250, 260, 270 },
        },
        {
            spell_id = 12755,
            name = "Goblin Bomb Dispenser",
            categories = { "Explosives" },
            icon = "inv_gizmo_06",
            source = {
                {
                    type = "Trainer",
                    cost = 2400,
                },
            },
            product = { item_id = 10587, qty = 1 },
            materials = {
                { item_id = 10561, qty = 2 },
                { item_id = 10505, qty = 4 },
                { item_id = 6037, qty = 6 },
                { item_id = 10560, qty = 1 },
                { item_id = 4407, qty = 2 },
            },
            levels = { 230, 230, 250, 270 },
        },
        {
            spell_id = 12618,
            name = "Rose Colored Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10503, qty = 1 },
            materials = {
                { item_id = 4304, qty = 6 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 230, 250, 260, 270 },
        },
        {
            spell_id = 1317960,
            name = "Satchel of Iron Bombs",
            categories = { "Ranged Weapons" },
            icon = "inv_misc_bag_10_black",
            source = {
                {
                    type = "Vendor",
                    item_id = 285287,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 285277, qty = 1 },
            materials = {
                { item_id = 4394, qty = 20 },
                { item_id = 4304, qty = 6 },
                { item_id = 4389, qty = 1 },
            },
            levels = { 230, 235, 237, 240 },
        },
    },
    [235] = {
        {
            spell_id = 12907,
            name = "Gnomish Mind Control Cap",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_49",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10726, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 6037, qty = 4 },
                { item_id = 10558, qty = 1 },
                { item_id = 7910, qty = 2 },
                { item_id = 4338, qty = 4 },
            },
            levels = { 235, 255, 265, 275 },
        },
        {
            spell_id = 12619,
            name = "Hi-Explosive Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10562, qty = 4 },
            materials = {
                { item_id = 10561, qty = 2 },
                { item_id = 10560, qty = 1 },
                { item_id = 10505, qty = 2 },
            },
            levels = { 235, 235, 255, 275 },
        },
        {
            spell_id = 12754,
            name = "The Big One",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_04",
            source = {
                {
                    type = "Trainer",
                    cost = 2600,
                },
            },
            product = { item_id = 10586, qty = 2 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 9061, qty = 1 },
                { item_id = 10507, qty = 6 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 235, 235, 255, 275 },
        },
    },
    [240] = {
        {
            spell_id = 1266921,
            name = "EZ-Thro Tru-Trigger",
            categories = { "Parts" },
            icon = "inv_engineering_loosetrigger",
            source = {
                {
                    type = "Item",
                    item_id = 264218,
                },
            },
            product = { item_id = 260808, qty = 1 },
            materials = {
                { item_id = 6037, qty = 1 },
                { item_id = 249431, qty = 1 },
            },
            levels = { 240, 240, 242, 245 },
        },
        {
            spell_id = 12759,
            name = "Gnomish Death Ray",
            categories = { "Gadgets" },
            icon = "inv_gizmo_08",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10645, qty = 1 },
            materials = {
                { item_id = 10559, qty = 2 },
                { item_id = 10560, qty = 1 },
                { item_id = 12808, qty = 1 },
                { item_id = 7972, qty = 4 },
                { item_id = 9060, qty = 1 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 12908,
            name = "Goblin Dragon Gun",
            categories = { "Gadgets" },
            icon = "spell_fire_flamebolt",
            source = {
                {
                    type = "Trainer",
                    cost = 2800,
                },
            },
            product = { item_id = 10727, qty = 1 },
            materials = {
                { item_id = 10559, qty = 2 },
                { item_id = 9061, qty = 4 },
                { item_id = 3860, qty = 6 },
                { item_id = 6037, qty = 6 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 12620,
            name = "Sniper Scope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Item",
                    item_id = 10608,
                },
            },
            product = { item_id = 10548, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 7910, qty = 1 },
                { item_id = 6037, qty = 2 },
            },
            levels = { 240, 260, 270, 280 },
        },
        {
            spell_id = 1266922,
            name = "Tru-Trigger Frag Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_02",
            source = {
                {
                    type = "Item",
                    item_id = 264219,
                },
            },
            product = { item_id = 260809, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 10505, qty = 1 },
                { item_id = 260808, qty = 1 },
            },
            levels = { 240, 240, 260, 280 },
        },
    },
    [245] = {
        {
            spell_id = 12758,
            name = "Goblin Rocket Helmet",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_49",
            source = {
                {
                    type = "Trainer",
                    cost = 3000,
                },
            },
            product = { item_id = 10588, qty = 1 },
            materials = {
                { item_id = 10543, qty = 1 },
                { item_id = 9061, qty = 4 },
                { item_id = 3860, qty = 4 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 245, 265, 275, 285 },
        },
        {
            spell_id = 12622,
            name = "Green Lens",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_44",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10504, qty = 1 },
            materials = {
                { item_id = 4304, qty = 8 },
                { item_id = 1529, qty = 3 },
                { item_id = 7909, qty = 3 },
                { item_id = 10286, qty = 2 },
                { item_id = 8153, qty = 2 },
            },
            levels = { 245, 265, 275, 285 },
        },
        {
            spell_id = 12621,
            name = "Mithril Gyro-Shot",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 10513, qty = 200 },
            materials = {
                { item_id = 3860, qty = 2 },
                { item_id = 10505, qty = 2 },
            },
            levels = { 245, 245, 265, 285 },
        },
    },
    [250] = {
        {
            spell_id = 19788,
            name = "Dense Blasting Powder",
            categories = { "Parts" },
            icon = "inv_misc_ammo_gunpowder_01",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 15992, qty = 1 },
            materials = {
                { item_id = 12365, qty = 2 },
            },
            levels = { 250, 250, 255, 260 },
        },
        {
            spell_id = 23070,
            name = "Dense Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 18641, qty = 2 },
            materials = {
                { item_id = 15992, qty = 2 },
                { item_id = 14047, qty = 3 },
            },
            levels = { 250, 250, 260, 270 },
        },
        {
            spell_id = 1266924,
            name = "Gnomish Army Knife",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_swissarmy",
            source = {
                {
                    type = "Vendor",
                    item_id = 264221,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260811, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 10558, qty = 1 },
                { item_id = 15994, qty = 2 },
            },
            levels = { 250, 250, 252, 255 },
        },
        {
            spell_id = 12624,
            name = "Mithril Mechanical Dragonling",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_head_dragon_01",
            source = {
                {
                    type = "Item",
                    item_id = 10609,
                },
            },
            product = { item_id = 10576, qty = 1 },
            materials = {
                { item_id = 3860, qty = 14 },
                { item_id = 7077, qty = 4 },
                { item_id = 6037, qty = 4 },
                { item_id = 9060, qty = 2 },
                { item_id = 9061, qty = 2 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 1266923,
            name = "SAF-T Disposable Parachute",
            categories = { "Gadgets" },
            icon = "inv_misc_cape_11",
            source = {
                {
                    type = "Vendor",
                    item_id = 264220,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260810, qty = 1 },
            materials = {
                { item_id = 10518, qty = 1 },
                { item_id = 260804, qty = 1 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 19567,
            name = "Salt Shaker",
            categories = { "Devices" },
            icon = "inv_egg_05",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 15846, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 12359, qty = 6 },
                { item_id = 10558, qty = 1 },
                { item_id = 10560, qty = 4 },
            },
            levels = { 250, 270, 280, 290 },
        },
        {
            spell_id = 23507,
            name = "Snake Burst Firework",
            categories = { "Fireworks" },
            icon = "spell_holy_holybolt",
            source = {
                {
                    type = "Item",
                    item_id = 19027,
                },
            },
            product = { item_id = 19026, qty = 4 },
            materials = {
                { item_id = 15992, qty = 2 },
                { item_id = 14047, qty = 2 },
                { item_id = 8150, qty = 1 },
            },
            levels = { 250, 250, 260, 270 },
        },
        {
            spell_id = 26011,
            name = "Tranquil Mechanical Yeti",
            categories = { "Pets and Guardians" },
            icon = "ability_hunter_pet_gorilla",
            product = { item_id = 21277, qty = 1 },
            materials = {
                { item_id = 15407, qty = 1 },
                { item_id = 15994, qty = 4 },
                { item_id = 7079, qty = 2 },
                { item_id = 18631, qty = 2 },
                { item_id = 10558, qty = 1 },
            },
            levels = { 250, 320, 330, 340 },
        },
    },
    [260] = {
        {
            spell_id = 23077,
            name = "Gyrofreeze Ice Reflector",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_02",
            source = {
                {
                    type = "Item",
                    item_id = 18652,
                },
            },
            product = { item_id = 18634, qty = 1 },
            materials = {
                { item_id = 15994, qty = 6 },
                { item_id = 18631, qty = 2 },
                { item_id = 12361, qty = 2 },
                { item_id = 7078, qty = 4 },
                { item_id = 3829, qty = 2 },
                { item_id = 13467, qty = 4 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 19790,
            name = "Thorium Grenade",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_08",
            source = {
                {
                    type = "Vendor",
                    item_id = 16041,
                    cost = 12000,
                    location = "Gearcutter Cogspinner, Ironforge",
                },
            },
            product = { item_id = 15993, qty = 3 },
            materials = {
                { item_id = 15994, qty = 1 },
                { item_id = 12359, qty = 3 },
                { item_id = 15992, qty = 3 },
                { item_id = 14047, qty = 3 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 19792,
            name = "Thorium Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_07",
            source = {
                {
                    type = "Item",
                    item_id = 16043,
                },
            },
            product = { item_id = 15995, qty = 1 },
            materials = {
                { item_id = 10559, qty = 2 },
                { item_id = 10561, qty = 2 },
                { item_id = 15994, qty = 2 },
                { item_id = 12359, qty = 4 },
                { item_id = 10546, qty = 1 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 19791,
            name = "Thorium Widget",
            categories = { "Parts" },
            icon = "inv_gizmo_04",
            source = {
                {
                    type = "Vendor",
                    item_id = 16042,
                    cost = 12000,
                    location = "Gearcutter Cogspinner, Ironforge",
                },
            },
            product = { item_id = 15994, qty = 1 },
            materials = {
                { item_id = 12359, qty = 3 },
                { item_id = 14047, qty = 1 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 23071,
            name = "Truesilver Transformer",
            categories = { "Parts" },
            icon = "inv_staff_18",
            source = {
                {
                    type = "Vendor",
                    item_id = 18651,
                    cost = 12000,
                    location = "Mazk Snipeshot, Stranglethorn Vale",
                },
            },
            product = { item_id = 18631, qty = 1 },
            materials = {
                { item_id = 6037, qty = 2 },
                { item_id = 7067, qty = 2 },
                { item_id = 7069, qty = 1 },
            },
            levels = { 260, 270, 275, 280 },
        },
        {
            spell_id = 1317270,
            name = "Unsanctified Grenade",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_01",
            source = {
                {
                    type = "Item",
                    item_id = 284870,
                },
            },
            product = { item_id = 284869, qty = 3 },
            materials = {
                { item_id = 18631, qty = 1 },
                { item_id = 12655, qty = 2 },
                { item_id = 15992, qty = 3 },
                { item_id = 14047, qty = 2 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 23129,
            name = "World Enlarger",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_08",
            source = {
                {
                    type = "Item",
                    item_id = 18661,
                },
            },
            product = { item_id = 18660, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 15994, qty = 2 },
                { item_id = 10558, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 3864, qty = 1 },
            },
            levels = { 260, 260, 265, 270 },
        },
    },
    [265] = {
        {
            spell_id = 23096,
            name = "Alarm-O-Bot",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_enggizmos_13",
            source = {
                {
                    type = "Item",
                    item_id = 18654,
                },
            },
            product = { item_id = 18645, qty = 1 },
            materials = {
                { item_id = 12359, qty = 4 },
                { item_id = 15994, qty = 2 },
                { item_id = 8170, qty = 4 },
                { item_id = 7910, qty = 1 },
                { item_id = 7191, qty = 1 },
            },
            levels = { 265, 275, 280, 285 },
        },
        {
            spell_id = 23078,
            name = "Goblin Jumper Cables XL",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_11",
            source = {
                {
                    type = "Item",
                    item_id = 18653,
                },
            },
            product = { item_id = 18587, qty = 1 },
            materials = {
                { item_id = 15994, qty = 2 },
                { item_id = 18631, qty = 2 },
                { item_id = 7191, qty = 2 },
                { item_id = 14227, qty = 2 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 265, 285, 295, 305 },
        },
        {
            spell_id = 19793,
            name = "Lifelike Mechanical Toad",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_monsterhead_03",
            source = {
                {
                    type = "Item",
                    item_id = 16044,
                },
            },
            product = { item_id = 15996, qty = 1 },
            materials = {
                { item_id = 12803, qty = 1 },
                { item_id = 15994, qty = 4 },
                { item_id = 10558, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 265, 285, 295, 305 },
        },
    },
    [270] = {
        {
            spell_id = 19794,
            name = "Spellpower Goggles Xtreme Plus",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 16045,
                },
            },
            product = { item_id = 15999, qty = 1 },
            materials = {
                { item_id = 10502, qty = 1 },
                { item_id = 7910, qty = 4 },
                { item_id = 12810, qty = 2 },
                { item_id = 14047, qty = 8 },
            },
            levels = { 270, 290, 300, 310 },
        },
    },
    [275] = {
        {
            spell_id = 19796,
            name = "Dark Iron Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_08",
            source = {
                {
                    type = "Item",
                    item_id = 16048,
                },
            },
            product = { item_id = 16004, qty = 1 },
            materials = {
                { item_id = 16000, qty = 2 },
                { item_id = 11371, qty = 6 },
                { item_id = 10546, qty = 2 },
                { item_id = 12361, qty = 2 },
                { item_id = 12799, qty = 2 },
                { item_id = 8170, qty = 4 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 26443,
            name = "Firework Cluster Launcher",
            categories = { "Fireworks" },
            icon = "inv_misc_enggizmos_03",
            source = {
                {
                    type = "Item",
                    item_id = 21737,
                },
            },
            product = { item_id = 21570, qty = 1 },
            materials = {
                { item_id = 9060, qty = 3 },
                { item_id = 9061, qty = 3 },
                { item_id = 18631, qty = 1 },
                { item_id = 10561, qty = 1 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 26426,
            name = "Large Blue Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_blue",
            source = {
                {
                    type = "Item",
                    item_id = 21733,
                },
            },
            product = { item_id = 21714, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 26427,
            name = "Large Green Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_green",
            source = {
                {
                    type = "Item",
                    item_id = 21734,
                },
            },
            product = { item_id = 21716, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 1319163,
            name = "Large Purple Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_purple",
            source = {
                {
                    type = "Item",
                    item_id = 286085,
                },
            },
            product = { item_id = 21717, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 26428,
            name = "Large Red Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_red",
            source = {
                {
                    type = "Item",
                    item_id = 21735,
                },
            },
            product = { item_id = 21718, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 1319164,
            name = "Large White Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_white",
            source = {
                {
                    type = "Item",
                    item_id = 286086,
                },
            },
            product = { item_id = 21719, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 1319165,
            name = "Large Yellow Rocket Cluster",
            categories = { "Fireworks" },
            icon = "inv_misc_missilelargecluster_yellow",
            source = {
                {
                    type = "Item",
                    item_id = 286087,
                },
            },
            product = { item_id = 21720, qty = 5 },
            materials = {
                { item_id = 15992, qty = 1 },
                { item_id = 8170, qty = 1 },
            },
            levels = { 275, 275, 280, 285 },
        },
        {
            spell_id = 1266925,
            name = "Loot-A-Rang",
            categories = { "Devices" },
            icon = "inv_eng_mechanicalboomerang",
            source = {
                {
                    type = "Vendor",
                    item_id = 264222,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260812, qty = 1 },
            materials = {
                { item_id = 12359, qty = 5 },
                { item_id = 16203, qty = 5 },
            },
            levels = { 275, 275, 277, 280 },
        },
        {
            spell_id = 23079,
            name = "Major Recombobulator",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_09",
            source = {
                {
                    type = "Item",
                    item_id = 18655,
                },
            },
            product = { item_id = 18637, qty = 1 },
            materials = {
                { item_id = 16000, qty = 2 },
                { item_id = 18631, qty = 1 },
                { item_id = 14047, qty = 2 },
            },
            levels = { 275, 285, 290, 295 },
        },
        {
            spell_id = 19814,
            name = "Masterwork Target Dummy",
            categories = { "Pets and Guardians" },
            icon = "inv_crate_02",
            source = {
                {
                    type = "Vendor",
                    item_id = 16046,
                    cost = 16000,
                    location = "Kor'gar, Riverglades",
                },
            },
            product = { item_id = 16023, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 16000, qty = 1 },
                { item_id = 15994, qty = 2 },
                { item_id = 6037, qty = 1 },
                { item_id = 8170, qty = 2 },
                { item_id = 14047, qty = 4 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 23080,
            name = "Powerful Seaforium Charge",
            categories = { "Explosives" },
            icon = "spell_shadow_detectinvisibility",
            source = {
                {
                    type = "Item",
                    item_id = 18656,
                },
            },
            product = { item_id = 18594, qty = 1 },
            materials = {
                { item_id = 15994, qty = 2 },
                { item_id = 15992, qty = 3 },
                { item_id = 8170, qty = 2 },
                { item_id = 159, qty = 1 },
            },
            levels = { 275, 275, 285, 295 },
        },
        {
            spell_id = 1266927,
            name = "SAF-T Clever Dynamite",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_06",
            source = {
                {
                    type = "Item",
                    item_id = 264224,
                },
            },
            product = { item_id = 260814, qty = 1 },
            materials = {
                { item_id = 15992, qty = 2 },
                { item_id = 14047, qty = 3 },
                { item_id = 260813, qty = 1 },
            },
            levels = { 275, 275, 285, 295 },
        },
        {
            spell_id = 1266926,
            name = "SAF-T Tube",
            categories = { "Parts" },
            icon = "inv_gizmo_hardenedadamantitetube",
            source = {
                {
                    type = "Item",
                    item_id = 264223,
                },
            },
            product = { item_id = 260813, qty = 1 },
            materials = {
                { item_id = 12359, qty = 1 },
                { item_id = 249726, qty = 1 },
            },
            levels = { 275, 275, 277, 280 },
        },
        {
            spell_id = 28327,
            name = "Steam Tonk Controller",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_20",
            source = {
                {
                    type = "Item",
                    item_id = 22729,
                },
            },
            product = { item_id = 22728, qty = 1 },
            materials = {
                { item_id = 15994, qty = 2 },
                { item_id = 10561, qty = 1 },
                { item_id = 10558, qty = 1 },
            },
            levels = { 275, 295, 305, 315 },
        },
        {
            spell_id = 19795,
            name = "Thorium Tube",
            categories = { "Parts" },
            icon = "inv_gizmo_pipe_04",
            source = {
                {
                    type = "Vendor",
                    item_id = 16047,
                    cost = 16000,
                    location = "Kor'gar, Riverglades",
                },
            },
            product = { item_id = 16000, qty = 1 },
            materials = {
                { item_id = 12359, qty = 6 },
            },
            levels = { 275, 295, 305, 315 },
        },
    },
    [285] = {
        {
            spell_id = 19799,
            name = "Dark Iron Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_05",
            source = {
                {
                    type = "Item",
                    item_id = 16049,
                },
            },
            product = { item_id = 16005, qty = 3 },
            materials = {
                { item_id = 15994, qty = 2 },
                { item_id = 11371, qty = 1 },
                { item_id = 15992, qty = 3 },
                { item_id = 14047, qty = 3 },
            },
            levels = { 285, 305, 315, 325 },
        },
        {
            spell_id = 19815,
            name = "Delicate Arcanite Converter",
            categories = { "Parts" },
            icon = "inv_gizmo_07",
            source = {
                {
                    type = "Item",
                    item_id = 16050,
                },
            },
            product = { item_id = 16006, qty = 1 },
            materials = {
                { item_id = 12360, qty = 1 },
                { item_id = 14227, qty = 1 },
            },
            levels = { 285, 305, 315, 325 },
        },
        {
            spell_id = 23486,
            name = "Dimensional Ripper - Everlook",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_07",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 18984, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 18631, qty = 1 },
                { item_id = 7077, qty = 4 },
                { item_id = 7910, qty = 2 },
                { item_id = 10586, qty = 1 },
            },
            levels = { 285, 285, 295, 305 },
        },
        {
            spell_id = 1266928,
            name = "EZ-Thro Shell",
            categories = { "Parts" },
            icon = "inv_qiraj_carapaceoldgod",
            source = {
                {
                    type = "Item",
                    item_id = 264225,
                },
            },
            product = { item_id = 260815, qty = 1 },
            materials = {
                { item_id = 12359, qty = 2 },
                { item_id = 249429, qty = 1 },
            },
            levels = { 285, 285, 287, 290 },
        },
        {
            spell_id = 1266929,
            name = "EZ-Thro Thorium Grenade",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_08",
            source = {
                {
                    type = "Item",
                    item_id = 264226,
                },
            },
            product = { item_id = 260816, qty = 1 },
            materials = {
                { item_id = 15994, qty = 1 },
                { item_id = 12359, qty = 3 },
                { item_id = 15992, qty = 3 },
                { item_id = 14047, qty = 3 },
                { item_id = 260815, qty = 1 },
            },
            levels = { 285, 285, 295, 305 },
        },
        {
            spell_id = 1317961,
            name = "Satchel of Dark Iron Bombs",
            categories = { "Ranged Weapons" },
            icon = "inv_misc_bag_07_black",
            source = {
                {
                    type = "Vendor",
                    item_id = 285288,
                    currencies = {
                        { currency_id = 3402, qty = 270, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 285278, qty = 1 },
            materials = {
                { item_id = 16005, qty = 20 },
                { item_id = 8170, qty = 6 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 285, 290, 292, 295 },
        },
        {
            spell_id = 19800,
            name = "Thorium Shells",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_03",
            source = {
                {
                    type = "Item",
                    item_id = 16051,
                },
            },
            product = { item_id = 15997, qty = 200 },
            materials = {
                { item_id = 12359, qty = 2 },
                { item_id = 15992, qty = 1 },
            },
            levels = { 285, 305, 315, 325 },
        },
        {
            spell_id = 23489,
            name = "Ultrasafe Transporter - Gadgetzan",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_12",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 18986, qty = 1 },
            materials = {
                { item_id = 3860, qty = 12 },
                { item_id = 18631, qty = 2 },
                { item_id = 7075, qty = 4 },
                { item_id = 7079, qty = 2 },
                { item_id = 7909, qty = 4 },
                { item_id = 9060, qty = 1 },
            },
            levels = { 285, 285, 295, 305 },
        },
    },
    [290] = {
        {
            spell_id = 23081,
            name = "Hyper-Radiant Flame Reflector",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_04",
            source = {
                {
                    type = "Item",
                    item_id = 18657,
                },
            },
            product = { item_id = 18638, qty = 1 },
            materials = {
                { item_id = 11371, qty = 4 },
                { item_id = 18631, qty = 3 },
                { item_id = 7080, qty = 6 },
                { item_id = 7910, qty = 4 },
                { item_id = 12800, qty = 2 },
            },
            levels = { 290, 310, 320, 330 },
        },
        {
            spell_id = 19825,
            name = "Master Engineer's Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 16053,
                },
            },
            product = { item_id = 16008, qty = 1 },
            materials = {
                { item_id = 10500, qty = 1 },
                { item_id = 12364, qty = 2 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 290, 310, 320, 330 },
        },
        {
            spell_id = 19819,
            name = "Voice Amplification Modulator",
            categories = { "Devices" },
            icon = "inv_jewelry_amulet_07",
            source = {
                {
                    type = "Item",
                    item_id = 16052,
                },
            },
            product = { item_id = 16009, qty = 1 },
            materials = {
                { item_id = 16006, qty = 2 },
                { item_id = 10558, qty = 1 },
                { item_id = 15994, qty = 1 },
                { item_id = 12799, qty = 1 },
            },
            levels = { 290, 310, 320, 330 },
        },
    },
    [300] = {
        {
            spell_id = 1263083,
            name = "Anarchist's Workbench",
            categories = { "Camping" },
            icon = "inv_10_specialization_professionbook_engineering_color1",
            source = {
                {
                    type = "Item",
                    item_id = 273117,
                },
            },
            product = { item_id = 279989, qty = 1 },
            materials = {
                { item_id = 273129, qty = 1 },
                { item_id = 15994, qty = 2 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 19831,
            name = "Arcane Bomb",
            categories = { "Explosives" },
            icon = "spell_shadow_mindbomb",
            source = {
                {
                    type = "Item",
                    item_id = 16055,
                },
            },
            product = { item_id = 16040, qty = 3 },
            materials = {
                { item_id = 16006, qty = 1 },
                { item_id = 12359, qty = 3 },
                { item_id = 14047, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 19830,
            name = "Arcanite Dragonling",
            categories = { "Pets and Guardians" },
            icon = "inv_misc_head_dragon_01",
            source = {
                {
                    type = "Item",
                    item_id = 16054,
                },
            },
            product = { item_id = 16022, qty = 1 },
            materials = {
                { item_id = 10576, qty = 1 },
                { item_id = 16006, qty = 8 },
                { item_id = 12655, qty = 10 },
                { item_id = 15994, qty = 6 },
                { item_id = 10558, qty = 4 },
                { item_id = 12810, qty = 6 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 22793,
            name = "Biznicks 247x128 Accurascope",
            categories = { "Scopes" },
            icon = "inv_misc_spyglass_02",
            source = {
                {
                    type = "Item",
                    item_id = 18290,
                },
            },
            product = { item_id = 18283, qty = 1 },
            materials = {
                { item_id = 17011, qty = 2 },
                { item_id = 7076, qty = 2 },
                { item_id = 16006, qty = 4 },
                { item_id = 11371, qty = 6 },
                { item_id = 16000, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24356,
            name = "Bloodvine Goggles",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_47",
            source = {
                {
                    type = "Item",
                    item_id = 20000,
                },
            },
            product = { item_id = 19999, qty = 1 },
            materials = {
                { item_id = 19726, qty = 4 },
                { item_id = 19774, qty = 5 },
                { item_id = 16006, qty = 2 },
                { item_id = 12804, qty = 8 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 24357,
            name = "Bloodvine Lens",
            categories = { "Cloth Headgear" },
            icon = "inv_helmet_44",
            source = {
                {
                    type = "Item",
                    item_id = 20001,
                },
            },
            product = { item_id = 19998, qty = 1 },
            materials = {
                { item_id = 19726, qty = 5 },
                { item_id = 19774, qty = 5 },
                { item_id = 16006, qty = 1 },
                { item_id = 12804, qty = 8 },
                { item_id = 12810, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 22795,
            name = "Core Marksman Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_05",
            source = {
                {
                    type = "Item",
                    item_id = 18292,
                },
            },
            product = { item_id = 18282, qty = 1 },
            materials = {
                { item_id = 17010, qty = 4 },
                { item_id = 17011, qty = 2 },
                { item_id = 12360, qty = 6 },
                { item_id = 16006, qty = 2 },
                { item_id = 16000, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266936,
            name = "Dimensional Transporter - Mt. Hyjal",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_06",
            source = {
                {
                    type = "Item",
                    item_id = 264233,
                },
            },
            product = { item_id = 260823, qty = 1 },
            materials = {
                { item_id = 3860, qty = 10 },
                { item_id = 18631, qty = 1 },
                { item_id = 7075, qty = 4 },
                { item_id = 7082, qty = 4 },
                { item_id = 251290, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266934,
            name = "EZ and SAF Field Transporter: Mt. Hyjal",
            categories = { "Consumable Devices" },
            icon = "inv_misc_enggizmos_10",
            source = {
                {
                    type = "Item",
                    item_id = 264231,
                },
            },
            product = { item_id = 260821, qty = 1 },
            materials = {
                { item_id = 260823, qty = 1 },
                { item_id = 260815, qty = 1 },
                { item_id = 260813, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266930,
            name = "EZ-Thro Dark Bomb",
            categories = { "Explosives" },
            icon = "inv_misc_bomb_05",
            source = {
                {
                    type = "Item",
                    item_id = 264227,
                },
            },
            product = { item_id = 260817, qty = 1 },
            materials = {
                { item_id = 15994, qty = 2 },
                { item_id = 11371, qty = 1 },
                { item_id = 15992, qty = 3 },
                { item_id = 14047, qty = 3 },
                { item_id = 260815, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266932,
            name = "EZ-Thro Field Transporter: Gadgetzan",
            categories = { "Consumable Devices" },
            icon = "inv_misc_enggizmos_02",
            source = {
                {
                    type = "Item",
                    item_id = 264229,
                },
            },
            product = { item_id = 260819, qty = 1 },
            materials = {
                { item_id = 18986, qty = 1 },
                { item_id = 260815, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266942,
            name = "EZ-Thro Magnetic Displacer",
            categories = { "Consumable Devices" },
            icon = "inv_misc_magnet",
            source = {
                {
                    type = "Item",
                    item_id = 264239,
                },
            },
            product = { item_id = 260829, qty = 1 },
            materials = {
                { item_id = 238788, qty = 1 },
                { item_id = 260815, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266931,
            name = "EZ-Thro Mana Bomb",
            categories = { "Explosives" },
            icon = "spell_shadow_mindbomb",
            source = {
                {
                    type = "Item",
                    item_id = 264228,
                },
            },
            product = { item_id = 260818, qty = 1 },
            materials = {
                { item_id = 16006, qty = 1 },
                { item_id = 12359, qty = 3 },
                { item_id = 14047, qty = 1 },
                { item_id = 260815, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 22704,
            name = "Field Repair Bot 74A",
            categories = { "Consumable Devices" },
            icon = "inv_egg_05",
            source = {
                {
                    type = "Item",
                    item_id = 18235,
                },
            },
            product = { item_id = 18232, qty = 1 },
            materials = {
                { item_id = 12359, qty = 12 },
                { item_id = 8170, qty = 4 },
                { item_id = 7191, qty = 1 },
                { item_id = 7067, qty = 2 },
                { item_id = 7068, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 19833,
            name = "Flawless Arcanite Rifle",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_03",
            source = {
                {
                    type = "Item",
                    item_id = 16056,
                },
            },
            product = { item_id = 16007, qty = 1 },
            materials = {
                { item_id = 12360, qty = 10 },
                { item_id = 16000, qty = 2 },
                { item_id = 7078, qty = 2 },
                { item_id = 7076, qty = 2 },
                { item_id = 12800, qty = 2 },
                { item_id = 12810, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 22797,
            name = "Force Reactive Disk",
            categories = { "Gadgets" },
            icon = "spell_arcane_portaldarnassus",
            source = {
                {
                    type = "Item",
                    item_id = 18291,
                },
            },
            product = { item_id = 18168, qty = 1 },
            materials = {
                { item_id = 12360, qty = 6 },
                { item_id = 16006, qty = 2 },
                { item_id = 7082, qty = 8 },
                { item_id = 12803, qty = 12 },
                { item_id = 7076, qty = 8 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266937,
            name = "Gnomish Poultryizer",
            categories = { "Gadgets" },
            icon = "inv_misc_enggizmos_06",
            source = {
                {
                    type = "Vendor",
                    item_id = 264234,
                    currencies = {
                        { currency_id = 3402, qty = 360, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260824, qty = 1 },
            materials = {
                { item_id = 16204, qty = 10 },
                { item_id = 14344, qty = 2 },
                { item_id = 249726, qty = 2 },
                { item_id = 251290, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266939,
            name = "Gnomish Weather Machine",
            categories = { "Devices" },
            icon = "inv_gizmo_07",
            source = {
                {
                    type = "Item",
                    item_id = 264236,
                },
            },
            product = { item_id = 260826, qty = 1 },
            materials = {
                { item_id = 7076, qty = 2 },
                { item_id = 7078, qty = 2 },
                { item_id = 7082, qty = 2 },
                { item_id = 7080, qty = 2 },
                { item_id = 248822, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306547,
            name = "Hyper Deluxe Sniper Rifle Mk XVII",
            categories = { "Ranged Weapons" },
            icon = "inv_weapon_rifle_05",
            source = {
                {
                    type = "Item",
                    item_id = 279322,
                },
            },
            product = { item_id = 279273, qty = 1 },
            materials = {
                { item_id = 274030, qty = 4 },
                { item_id = 251290, qty = 2 },
                { item_id = 251291, qty = 10 },
                { item_id = 12800, qty = 1 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1266933,
            name = "SAF-T Emergency Ripper: Everlook",
            categories = { "Consumable Devices" },
            icon = "inv_misc_enggizmos_01",
            source = {
                {
                    type = "Item",
                    item_id = 264230,
                },
            },
            product = { item_id = 260820, qty = 1 },
            materials = {
                { item_id = 18984, qty = 1 },
                { item_id = 260813, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266941,
            name = "SAF-T Nitro Boosts",
            categories = { "Consumable Devices" },
            icon = "inv_gizmo_rocketbootextreme",
            source = {
                {
                    type = "Item",
                    item_id = 264238,
                },
            },
            product = { item_id = 260828, qty = 1 },
            materials = {
                { item_id = 238787, qty = 1 },
                { item_id = 260813, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266943,
            name = "SAF-T Teleport",
            categories = { "Consumable Devices" },
            icon = "inv_misc_enggizmos_16",
            source = {
                {
                    type = "Item",
                    item_id = 264240,
                },
            },
            product = { item_id = 260830, qty = 1 },
            materials = {
                { item_id = 238786, qty = 1 },
                { item_id = 260813, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1306546,
            name = "SAF-T Ultra Precision Scope",
            categories = { "Scopes" },
            icon = "inv_engineering_90_scope_blue",
            source = {
                {
                    type = "Item",
                    item_id = 279321,
                },
            },
            product = { item_id = 279272, qty = 1 },
            materials = {
                { item_id = 251290, qty = 1 },
                { item_id = 251291, qty = 12 },
            },
            levels = { 300, 310, 317, 325 },
        },
        {
            spell_id = 1266940,
            name = "Stealthman 52",
            categories = { "Gadgets" },
            icon = "inv_misc_enggizmos_04",
            source = {
                {
                    type = "Vendor",
                    item_id = 264237,
                    currencies = {
                        { currency_id = 3402, qty = 360, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260827, qty = 1 },
            materials = {
                { item_id = 7082, qty = 6 },
                { item_id = 16204, qty = 6 },
                { item_id = 248820, qty = 2 },
                { item_id = 251290, qty = 2 },
                { item_id = 248823, qty = 4 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1293849,
            name = "Swiftfeather Arrow",
            categories = { "Ammunition" },
            icon = "inv_ammo_arrow_06",
            source = {
                {
                    type = "Item",
                    item_id = 274389,
                },
            },
            product = { item_id = 274387, qty = 200 },
            materials = {
                { item_id = 251291, qty = 8 },
                { item_id = 17056, qty = 5 },
                { item_id = 7069, qty = 1 },
            },
            levels = { 300, 310, 315, 320 },
        },
        {
            spell_id = 1293850,
            name = "Swiftstrike Shot",
            categories = { "Ammunition" },
            icon = "inv_ammo_bullet_06",
            source = {
                {
                    type = "Item",
                    item_id = 274390,
                },
            },
            product = { item_id = 274388, qty = 200 },
            materials = {
                { item_id = 251291, qty = 8 },
                { item_id = 12365, qty = 8 },
                { item_id = 7067, qty = 1 },
            },
            levels = { 300, 310, 315, 320 },
        },
        {
            spell_id = 23082,
            name = "Ultra-Flash Shadow Reflector",
            categories = { "Devices" },
            icon = "inv_misc_enggizmos_16",
            source = {
                {
                    type = "Item",
                    item_id = 18658,
                },
            },
            product = { item_id = 18639, qty = 1 },
            materials = {
                { item_id = 11371, qty = 8 },
                { item_id = 18631, qty = 4 },
                { item_id = 12803, qty = 6 },
                { item_id = 12808, qty = 4 },
                { item_id = 12800, qty = 2 },
                { item_id = 12799, qty = 2 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266938,
            name = "Ultralight Goblin Glider",
            categories = { "Gadgets" },
            icon = "inv_misc_clothscrap_01",
            source = {
                {
                    type = "Vendor",
                    item_id = 264235,
                    currencies = {
                        { currency_id = 3402, qty = 360, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260825, qty = 1 },
            materials = {
                { item_id = 249431, qty = 2 },
                { item_id = 249726, qty = 2 },
                { item_id = 249429, qty = 8 },
                { item_id = 12359, qty = 8 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 1266935,
            name = "Ultrasafe Rechargeable Battery",
            categories = { "Consumable Devices" },
            icon = "inv_gizmo_electrifiedether",
            source = {
                {
                    type = "Vendor",
                    item_id = 264232,
                    currencies = {
                        { currency_id = 3402, qty = 360, name = "Merchant's Favor" },
                    },
                    location = "Fritz Fizzle, Redridge Mountains",
                    reputation = { faction = "Azeroth Commerce Authority", standing = "Honored" },
                },
            },
            product = { item_id = 260822, qty = 1 },
            materials = {
                { item_id = 249410, qty = 2 },
                { item_id = 249426, qty = 1 },
                { item_id = 249431, qty = 1 },
                { item_id = 12359, qty = 3 },
                { item_id = 3860, qty = 1 },
                { item_id = 248822, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
    },
    [980] = {
        {
            spell_id = 1293088,
            name = "9-60 Battery Pack",
            categories = { "Consumable Devices" },
            icon = "inv_battery_02",
            product = { item_id = 274048, qty = 1 },
            materials = {
                { item_id = 249409, qty = 1 },
                { item_id = 249391, qty = 1 },
                { item_id = 3575, qty = 1 },
            },
            levels = { 0, 125, 135, 145 },
        },
        {
            spell_id = 12719,
            name = "Explosive Arrow",
            categories = { "Ammunition" },
            icon = "inv_ammo_arrow_02",
            product = { item_id = 10579, qty = 100 },
            materials = {
                { item_id = 3030, qty = 100 },
                { item_id = 10505, qty = 2 },
                { item_id = 3860, qty = 2 },
            },
            levels = { 0, 210, 230, 250 },
        },
        {
            spell_id = 12904,
            name = "Gnomish Ham Radio",
            categories = { "Gadgets" },
            icon = "spell_holy_dizzy",
            product = { item_id = 10723, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 3860, qty = 2 },
                { item_id = 4389, qty = 1 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 0, 240, 250, 260 },
        },
        {
            spell_id = 12720,
            name = "Goblin \"Boom\" Box",
            categories = { "Devices" },
            icon = "inv_box_01",
            product = { item_id = 10580, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 10505, qty = 2 },
                { item_id = 10558, qty = 1 },
                { item_id = 3860, qty = 2 },
            },
            levels = { 0, 235, 245, 255 },
        },
        {
            spell_id = 12722,
            name = "Goblin Radio",
            categories = { "Devices" },
            icon = "spell_holy_dizzy",
            product = { item_id = 10585, qty = 1 },
            materials = {
                { item_id = 10561, qty = 1 },
                { item_id = 3860, qty = 2 },
                { item_id = 4389, qty = 1 },
                { item_id = 10560, qty = 1 },
            },
            levels = { 0, 240, 250, 260 },
        },
        {
            spell_id = 12900,
            name = "Mobile Alarm",
            categories = { "Pets and Guardians" },
            icon = "inv_crate_01",
            product = { item_id = 10719, qty = 1 },
            materials = {
                { item_id = 10559, qty = 1 },
                { item_id = 10560, qty = 1 },
                { item_id = 3860, qty = 4 },
            },
            levels = { 0, 205, 225, 245 },
        },
        {
            spell_id = 1249634,
            name = "Sandpaper",
            categories = { "Parts" },
            icon = "inv_inscription_papyrus",
            product = { item_id = 249432, qty = 1 },
            materials = {
                { item_id = 249425, qty = 2 },
                { item_id = 2996, qty = 1 },
            },
            levels = { 0, 130, 142, 155 },
        },
        {
            spell_id = 13240,
            name = "The Mortar: Reloaded",
            categories = { "Explosives" },
            icon = "inv_musket_01",
            product = { item_id = 10577, qty = 1 },
            materials = {
                { item_id = 10577, qty = 1 },
                { item_id = 3860, qty = 1 },
                { item_id = 10505, qty = 3 },
            },
        },
        {
            spell_id = 20219,
            name = "Gnomish Engineer",
            icon = "inv_gizmo_02",
        },
        {
            spell_id = 20222,
            name = "Goblin Engineer",
            icon = "spell_fire_selfdestruct",
        },
    },
}
