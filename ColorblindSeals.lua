--- STEAMODDED HEADER
--- MOD_NAME: Colorblind Seals
--- MOD_ID: ColorblindSeals
--- MOD_AUTHOR: [Nether]
--- MOD_DESCRIPTION: Add colorblind-friendly seals to the game!
--- LOADER_VERSION_LEQ: 0.9.8
--- VERSION: 1.0.0

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.ColorblindSeals()
    SMODS.Sprite:new(
        "centers",
        SMODS.findModByID("ColorblindSeals").path,
        "Enhancers-Colorblind.png",
        71,
        95,
        "asset_atli"
    ):register()
    sendDebugMessage("Injected colorblind-friendly seals!")
end