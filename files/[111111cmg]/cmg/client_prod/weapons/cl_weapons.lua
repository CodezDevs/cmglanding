local a=module("cfg/weapons")Citizen.CreateThread(function()for b,c in pairs(a.weapons)do AddTextEntry(b,c.name)end end)function CMG.giveWeapons(d,e)local f=PlayerPedId()if e then RemoveAllPedWeapons(f,true)end;for g,h in pairs(d)do local i=GetHashKey(g)local j=h.ammo or 0;GiveWeaponToPed(f,i,j,false)local k=h.attachments or{}for l,m in pairs(k)do GiveWeaponComponentToPed(f,g,m)end end end;function CMG.getWeapons()local f=PlayerPedId()local n={}local d={}for b,c in pairs(a.weapons)do if HasPedGotWeapon(f,c.hash)then local h={}local o=GetPedAmmoTypeFromWeapon(f,c.hash)if n[o]==nil then n[o]=true;h.ammo=GetAmmoInPedWeapon(f,c.hash)else h.ammo=0 end;h.attachments=getAllWeaponAttachments(b)d[b]=h end end;return d end;function CMG.isPlayerArmed()local f=PlayerPedId()for b,c in pairs(a.weapons)do if HasPedGotWeapon(f,c.hash)then return true end end;return false end;function tvRP.getWeapons()local f=PlayerPedId()local n={}local d={}for b,c in pairs(a.weapons)do if HasPedGotWeapon(f,c.hash)then local h={}local o=GetPedAmmoTypeFromWeapon(f,c.hash)if n[o]==nil then n[o]=true;h.ammo=GetAmmoInPedWeapon(f,c.hash)else h.ammo=0 end;h.attachments=getAllWeaponAttachments(b)d[b]=h end end;return d end;local p={}local q={}local r=0;function CMG.getCachedWeaponStore()return q end;local function s(b,j)local f=PlayerPedId()local t=GetPedAmmoTypeFromWeapon(f,GetHashKey(b))for l,c in pairs(CMG.getCachedWeaponStore())do if GetPedAmmoTypeFromWeapon(f,c.weaponHash)==t then c.ammo=j;c.setFrame=GetFrameCount()end end end;RegisterNetEvent("CMG:addWeaponStore",function(b,i,u)if not q[b]then q[b]={weaponHash=i,ammo=0,setFrame=GetFrameCount()}s(b,0)end;r=u end)RegisterNetEvent("CMG:removeWeaponStore",function(b,v,u)q[b]=nil;if v then SetPedAmmoByType(PlayerPedId(),GetPedAmmoTypeFromWeapon(PlayerPedId(),GetHashKey(b)),0)end;r=u end)RegisterNetEvent("CMG:clearWeaponStore",function(u)q={}r=u end)local w={[`WEAPON_STUNGUN`]=true,[`WEAPON_STAFFGUN`]=true,[`WEAPON_SNOWBALL`]=true}local x=0;Citizen.CreateThread(function()while true do local y=CMG.getCachedWeaponStore()local z=GetFrameCount()local A=CMG.isPedScriptGuidChanging()or CMG.isPoliceHorse()local n={}for b,c in pairs(y)do local o=GetPedAmmoTypeFromWeapon(PlayerPedId(),c.weaponHash)if n[o]==nil then n[o]=true;if z>y[b].setFrame and not A and not CMG.isInPaintball()then local B=GetAmmoInPedWeapon(PlayerPedId(),c.weaponHash)if B>y[b].ammo and not w[c.weaponHash]then TriggerServerEvent("CMG:banType64",b,B,y[b].ammo)end;y[b].ammo=B end else y[b].ammo=0 end end;if not table.contentEquals(y,p)and GetGameTimer()-x>=5000 and not CMG.isInPaintball()then TriggerServerEvent("CMG:updateAmmoStore",y,r)x=GetGameTimer()end;p=table.copy(y)Wait(2000)end end)function CMG.removeAllWeapons()RemoveAllPedWeapons(CMG.getPlayerPed())end;function tvRP.giveWeapons()TriggerServerEvent("CMG:banType44")end;local C=GetGameTimer()RegisterCommand("storecurrentweapon",function()if C+3000<GetGameTimer()and not CMG.inEvent()then C=GetGameTimer()if HasPedGotWeapon(PlayerPedId(),`WEAPON_PISTOL50`)or HasPedGotWeapon(PlayerPedId(),`WEAPON_MACHINEPISTOL`)then else local l,i=GetCurrentPedWeapon(PlayerPedId())local g=a.weaponHashToModels[i]TriggerServerEvent("CMG:forceStoreSingleWeapon",true,false,g)end else tvRP.notify("~r~Store weapons cooldown, please wait.")end end)RegisterCommand("storeallweapons",function()if C+3000<GetGameTimer()and not CMG.inEvent()then C=GetGameTimer()if HasPedGotWeapon(PlayerPedId(),`WEAPON_PISTOL50`)or HasPedGotWeapon(PlayerPedId(),`WEAPON_MACHINEPISTOL`)then else TriggerServerEvent("CMG:forceStoreWeapons",true,false)end else tvRP.notify("~r~Store weapons cooldown, please wait.")end end)RegisterNetEvent("CMG:addStoredAmmo",function(b,j,u)if q[b]then q[b].ammo=q[b].ammo+j;q[b].setFrame=GetFrameCount()else CMG.logError("CMG:addStoredAmmo","Failed to add "..tostring(j).." ammo to "..b,json.encode(q))end;r=u end)RegisterNetEvent("CMG:setStoredAmmo",function(b,j,u)if q[b]then s(b,j)else CMG.logError("CMG:setStoredAmmo","Failed to set the ammo of "..b.." to "..tostring(j),json.encode(q))end;r=u end)AddEventHandler('onResourceStop',function(D)if D==GetCurrentResourceName()then RemoveAllPedWeapons(PlayerPedId(),true)end end)