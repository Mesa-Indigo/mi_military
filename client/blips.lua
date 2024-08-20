
-- load blip function
local loadblip = function(data)
local blip = AddBlipForCoord(data.loc.x, data.loc.y, data.loc.z)
    SetBlipSprite(blip, data.spr) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, data.scl) SetBlipColour(blip, data.clr)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.lbl) EndTextCommandSetBlipName(blip)
end

function LoadBlips(data)
    for _, blips in pairs(data) do
        loadblip(blips)
    end
end