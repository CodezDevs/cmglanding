RegisterNetEvent("CMG:mutePlayers",function(a)for b,c in pairs(a)do exports["pma-voice"]:mutePlayer(b,true)end end)RegisterNetEvent("CMG:mutePlayer",function(b)exports["pma-voice"]:mutePlayer(b,true)end)RegisterNetEvent("CMG:unmutePlayer",function(b)exports["pma-voice"]:mutePlayer(b,false)end)