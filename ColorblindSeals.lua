--- STEAMODDED HEADER
--- MOD_NAME: Colorblind Seals
--- MOD_ID: ColorblindSeals
--- MOD_AUTHOR: [Nether]
--- MOD_DESCRIPTION: Add colorblind-friendly seals to the game!
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0

----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas{
    key = "centers",
    path = "Enhancers-Colorblind.png",
    px = 71,
    py = 95,
    --raw_key = true,
    inject = function(self)
        SMODS.Atlas.inject(self)
        G.shared_seals = {
            Gold = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 2,y = 0}),
            Purple = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 4,y = 4}),
            Red = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 5,y = 4}),
            Blue = Sprite(0, 0, G.CARD_W, G.CARD_H, self, {x = 6,y = 4}),
        }
    end
}

sendDebugMessage("Injected colorblind-friendly seals!")