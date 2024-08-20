local bliplist = {
    hangar_1 = { lbl = 'FZ: Hanger A',      loc = vec2(-2138.7, 3252.4), spr = 569, scl = 0.6, clr = 22 },
    hangar_2 = { lbl = 'FZ: Hanger B',      loc = vec2(-1836.2, 2979.7), spr = 569, scl = 0.6, clr = 22 },
    ctrtower = { lbl = 'FZ: Control Tower', loc = vec2(-2359.4, 3246.5), spr = 58,  scl = 0.6, clr = 11 },
    firectrl = { lbl = 'FZ: Fire Station',  loc = vec2(-2104.8, 2832.8), spr = 436, scl = 0.6, clr = 44 },
    fuelctrl = { lbl = 'FZ: Fuel Station',  loc = vec2(-2444.2, 2969.0), spr = 361, scl = 0.6, clr = 11 },
    barracks = { lbl = 'FZ: Barracks',      loc = vec2(-1804.2, 3239.9), spr = 492, scl = 0.6, clr = 69 },
    traingfd = { lbl = 'FZ: Train. Field',  loc = vec2(-1951.7, 3313.8), spr = 126, scl = 0.6, clr = 71 },
    autogrge = { lbl = 'FZ: Auto Garage',   loc = vec2(-1759.7, 3078.0), spr = 757, scl = 0.6, clr = 11 },
}

-- load blip function
local loadblip = function(data)
local blip = AddBlipForCoord(data.loc.x, data.loc.y, data.loc.z)
    SetBlipSprite(blip, data.spr) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, data.scl) SetBlipColour(blip, data.clr)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.lbl) EndTextCommandSetBlipName(blip)
end

function LoadBlips()
    for _, blips in pairs(bliplist) do
        loadblip(blips)
    end
end