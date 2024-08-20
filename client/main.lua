
-- initial start to verify correct loading
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
      if
        Debug then print(locale('load_rs'))
        LoadBlips()
      end
    end
end)