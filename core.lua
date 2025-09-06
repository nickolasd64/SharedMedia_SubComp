-- SharedMedia_SubComp
-- Minimal input: just list new files

local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
if not LSM then
    print("|cffFF0000SharedMedia_SubComp:|r LibSharedMedia-3.0 not found.")
    return
end

local ADDON_PATH = "Interface\\AddOns\\SharedMedia_SubComp\\media\\"

-- Green display name, optional prefix
local function makeName(prefix, filename)
    local name = filename:gsub("%.%w+$", "")
    if prefix and prefix ~= "" then
        return "|cff00ff00" .. prefix .. ": " .. name .. "|r"
    else
        return "|cff00ff00" .. name .. "|r"
    end
end

-- Register a list of files in a folder
local function registerFiles(category, folder, prefix, fileList)
    for _, file in ipairs(fileList) do
        local path = ADDON_PATH..folder.."\\"..file
        LSM:Register(category, makeName(prefix, file), path)
        -- print("|cff33ff99SharedMedia_SubComp:|r Registered "..category..": "..makeName(prefix, file))
    end
end

-- ======================
-- === ADD NEW FILES HERE
-- ======================

-- START GENERATED FILES
registerFiles("statusbar", "statusbars", "", {
})

registerFiles("font", "fonts", "", {
})

registerFiles("background", "backgrounds", "", {
    "SC.blp",
})

registerFiles("sound", "sounds\\current", "Current", {
    "3. Loomithar Pylons Soon.ogg",
    "3. Loomithar Tank Frontal Kill Adds.ogg",
    "3. Loomithar Tethers Coming Out.ogg",
    "4. Araz Adds in Back.ogg",
    "4. Araz Silence Circles.ogg",
    "7. Salad Bar Blue Orbs.ogg",
    "7. Salad Bar Circles to Edge.ogg",
    "7. Salad Bar Claws Out.ogg",
    "7. Salad Bar Cleave Interrupt.ogg",
    "7. Salad Bar Lasers.ogg",
    "7. Salad Bar Not Drake.ogg",
    "7. Salad Bar Purple Orbs.ogg",
    "7. Salad Bar Smash.ogg",
    "7. Salad Bar Starkillers.ogg",
    "7. Salad Bar Tank Combo.ogg",
    "7. Salad Bar Tank Laser.ogg",
})

registerFiles("sound", "sounds\\common", "Common", {
    "Circle Watch Feet.ogg",
    "Intermission.ogg",
    "Kill Adds.ogg",
    "Kill Dragon.ogg",
    "Knockback Back Wall.ogg",
    "Knockback Circle.ogg",
    "Knockback Countdown.ogg",
    "Knockback Diamond.ogg",
    "Knockback Skull.ogg",
    "Knockback Square.ogg",
    "Knockback Star.ogg",
    "Knockback to Moon.ogg",
    "Knockback Triangle.ogg",
    "Knockback X.ogg",
    "Lines Coming.ogg",
    "Move to Circle.ogg",
    "Move to Diamond.ogg",
    "Move to Moon.ogg",
    "Move to Skull.ogg",
    "Move to square.ogg",
    "Move to Star.ogg",
    "Move to Triangle.ogg",
    "Move to X.ogg",
    "Orbs Coming.ogg",
    "Phase 2 Start.ogg",
    "Platforms.ogg",
    "Puddles Left.ogg",
    "Puddles Right.ogg",
    "Pushback Soon Spread.ogg",
    "Rotate Beams.ogg",
    "Soak 1.ogg",
    "Soak 2.ogg",
    "Soaks.ogg",
    "Tank Nuke countdown.ogg",
    "What_does_that_mean.ogg",
})

registerFiles("border", "borders", "", {
})

-- END GENERATED FILES





























