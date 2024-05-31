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

    local seals = SMODS.Sprite:new(
        "centers",
        SMODS.findModByID("ColorblindSeals").path,
        "Enhancers-Colorblind.png",
        71,
        95,
        "asset_atli"
    )

    seals.inject = function(self)
            SMODS.Sprite:inject(self)
            G.shared_seals = {
                Gold = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 2,y = 0}),
                Purple = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 4,y = 4}),
                Red = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 5,y = 4}),
                Blue = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 6,y = 4}),
            }
        end

    seals:register()

    sendDebugMessage("Injected colorblind-friendly seals!")

end