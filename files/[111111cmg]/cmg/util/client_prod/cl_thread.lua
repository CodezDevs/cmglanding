local a={}Citizen.CreateThread(function()while true do local b={}b.playerPed=CMG.getPlayerPed()b.playerCoords=CMG.getPlayerCoords()b.playerId=CMG.getPlayerId()b.vehicle=CMG.getPlayerVehicle()b.weapon=GetSelectedPedWeapon(b.playerPed)for c=1,#a do local d=a[c]local e,f=pcall(d,b)if not e then print(f)end end;Wait(0)end end)function CMG.createThreadOnTick(d)a[#a+1]=d end