local a;local b;local c={vector3(314.96408081055,-591.47253417969,43.284103393555)}RegisterNetEvent("CMG:nhsSyncAllDoors",function(d,e)b=d;a=e end)AddEventHandler("CMG:onClientSpawn",function(f,g)if g then while a==nil or b==nil do Citizen.Wait(1000)end;enter_openNhsDoor=function()end;exit_openNhsDoor=function()end;ontick_openNhsDoor=function(h)local i=""if globalNHSOnDuty then i=" (E to toggle lock)"end;if a[h.doorHash]==5 or a[h.doorHash]==0 then CMG.DrawText3D(h.position,"🔓"..i,0.45,4)else CMG.DrawText3D(h.position,"🔒"..i,0.45,4)end;if IsControlJustPressed(0,38)and globalNHSOnDuty then CMG.loadAnimDict("anim@heists@keycard@")Citizen.CreateThread(function()TaskPlayAnim(PlayerPedId(),"anim@heists@keycard@","exit",5.0,1.0,-1,48,0,0,0,0)Wait(1200)ClearPedTasks(PlayerPedId())RemoveAnimDict("anim@heists@keycard@")end)if a[h.doorHash]==4 then TriggerServerEvent("CMG:nhsSetDoorState",h.doorHash,5)else TriggerServerEvent("CMG:nhsSetDoorState",h.doorHash,4)end end end;for j=1,#b,1 do CMG.createArea("openNhsDoor_"..b[j].doorHash,b[j].position,1.5,5,enter_openNhsDoor,exit_openNhsDoor,ontick_openNhsDoor,{doorHash=b[j].doorHash,position=b[j].position})end;for j=1,#b do AddDoorToSystem(b[j].doorHash,b[j].modelHash,b[j].position.x,b[j].position.y,b[j].position.z,false,false,false)DoorSystemSetDoorState(b[j].doorHash,a[b[j].doorHash],false,false)end;local k=function()a=CMG.TriggerServerCallback("CMG:enterNhsSyncDoors")for l,m in pairs(a)do DoorSystemSetDoorState(l,m,false,false)if m==0 or m==5 then DoorSystemSetHoldOpen(l,true)else DoorSystemSetHoldOpen(l,false)end end end;for j=1,#c do CMG.createArea("nhsSyncDoorsOnAreaEnter",c[j],250,250,k,function()end,function()end,{})end end end)RegisterNetEvent("CMG:nhsSyncDoor",function(n,o)DoorSystemSetDoorState(n,o,false,false)if o==0 or o==5 then DoorSystemSetHoldOpen(n,true)else DoorSystemSetHoldOpen(n,false)end;if a[n]~=nil then a[n]=o end end)