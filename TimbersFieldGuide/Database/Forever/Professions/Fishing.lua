local _, TFG = ...

TFG.FISHING_FOREVER = {
    [1] = {
        {
            spell_id = 7620,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
            },
            levels = { 1 },
            cap = 75,
        },
        {
            spell_id = 7738,
            name = "Fishing Poles",
            icon = "trade_fishing",
            source = {
                {
                    type = "Trainer",
                },
            },
            levels = { 1 },
        },
        {
            item_id = 6256,
            name = "Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                {
                    type = "Vendor",
                    cost = 23,
                },
            },
        },
        {
            item_id = 12225,
            name = "Blump Family Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                {
                    type = "Quest",
                    location = "Gubber Blump, Auberdine, Darkshore",
                    quest_id = 1141,
                },
            },
        },
        {
            item_id = 19972,
            name = "Lucky Fishing Hat",
            categories = { "Gear" },
            icon = "inv_helmet_31",
            source = {
                {
                    type = "Quest",
                    location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
                    quest_id = 8221,
                },
            },
        },
        {
            item_id = 19969,
            name = "Nat Pagle's Extreme Anglin' Boots",
            categories = { "Gear" },
            icon = "inv_boots_09",
            source = {
                {
                    type = "Quest",
                    location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
                    quest_id = 8225,
                },
            },
        },
    },
    [10] = {
        {
            item_id = 6365,
            name = "Strong Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                {
                    type = "Vendor",
                    cost = 901,
                },
            },
        },
    },
    [20] = {
        {
            spell_id = 1229745,
            name = "Fish Bowl",
            rank = 1,
            categories = { "Camping" },
            icon = "inv_magicalfishpet",
            source = {
                {
                    type = "Trainer",
                    cost = 100,
                },
                {
                    type = "Quest",
                    location = "Sam Sarsaparilla, Elwynn Forest",
                    quest_id = 97920,
                    quest_name = "Camping 101: Fishing",
                },
            },
            product = { item_id = 279967, qty = 1 },
            materials = {
                { item_id = 6291, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 20, 20, 22, 25 },
        },
    },
    [50] = {
        {
            spell_id = 7731,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                {
                    type = "Trainer",
                    cost = 500,
                },
            },
            levels = { 50 },
            cap = 150,
        },
        {
            item_id = 6366,
            name = "Darkwood Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                {
                    type = "Item",
                    location = "Fishing in inland lakes and rivers in certain low-level zones like Ashenvale and Hillsbrad Foothills",
                },
            },
        },
    },
    [100] = {
        {
            item_id = 6367,
            name = "Big Iron Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                {
                    type = "Item",
                    location = "Shellfish traps off the Southwest coast of Desolace",
                },
            },
        },
        {
            item_id = 19022,
            name = "Nat Pagle's Extreme Angler FC-5000",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                {
                    type = "Quest",
                    location = "Katoom the Angler, Eastern coast of The Hinterlands (Horde only)",
                    quest_id = 7815,
                },
            },
        },
    },
    [125] = {
        {
            spell_id = 7732,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            levels = { 125 },
            cap = 225,
        },
    },
    [140] = {
        {
            spell_id = 1262990,
            name = "Fishing Rack",
            categories = { "Camping" },
            icon = "inv_misc_2h_draenorfishingpole_a_01",
            source = {
                {
                    type = "Item",
                    item_id = 273141,
                },
            },
            product = { item_id = 279965, qty = 1 },
            materials = {
                { item_id = 4470, qty = 2 },
                { item_id = 8925, qty = 1 },
                { item_id = 8365, qty = 2 },
            },
            levels = { 140, 140, 142, 145 },
        },
    },
    [225] = {
        {
            spell_id = 18248,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            levels = { 225 },
            cap = 300,
        },
    },
    [300] = {
        {
            spell_id = 1262998,
            name = "Fishing Hut",
            categories = { "Camping" },
            icon = "inv_fishingchair",
            source = {
                {
                    type = "Item",
                    item_id = 273119,
                },
            },
            product = { item_id = 279966, qty = 1 },
            materials = {
                { item_id = 4470, qty = 5 },
                { item_id = 14048, qty = 2 },
                { item_id = 273295, qty = 1 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            item_id = 19970,
            name = "Arcanite Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                {
                    type = "Quest",
                    location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
                    quest_id = 10037,
                },
            },
        },
    },
    [980] = {
        {
            spell_id = 43308,
            name = "Find Fish",
            icon = "inv_misc_fish_02",
            levels = { 0, 1, 1, 1 },
        },
        {
            spell_id = 1278067,
            name = "Bait and Tackle",
            icon = "inv_misc_enggizmos_39",
        },
    },
}
