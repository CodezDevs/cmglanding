local a=module("cfg/cfg_identity")local b=a.identites;local c=false;local d=""RMenu.Add("main","identity",RageUI.CreateMenu("","",CMG.getRageUIMenuWidth(),CMG.getRageUIMenuHeight(),"cmg_cityhallui","cmg_cityhallui"))RMenu:Get("main","identity"):SetSubtitle("~b~Select a job.")AddEventHandler("CMG:onClientSpawn",function(e,f)if f then local g=function()drawNativeNotification("Press ~INPUT_PICKUP~ to access the City Hall.")PlaySound(-1,"SELECT","HUD_MINI_GAME_SOUNDSET",0,0,1)end;local h=function()RageUI.CloseAll()RageUI.Visible(RMenu:Get("main","identity"),false)end;local i=function()if IsControlJustPressed(1,51)then RageUI.CloseAll()RageUI.Visible(RMenu:Get("main","identity"),not RageUI.Visible(RMenu:Get("cmgadminmenu","identity")))end end;for j,k in pairs(b)do CMG.createArea("identity_"..j,k,1.5,6,g,h,i)tvRP.addMarker(k.x,k.y,k.z-0.2,0.5,0.5,0.5,0,50,255,170,50,20,false,false,true)end end end)RageUI.CreateWhile(1.0,RMenu:Get('main','identity'),nil,function()RageUI.IsVisible(RMenu:Get("main","identity"),true,true,true,function()RageUI.ButtonWithStyle("Change your Identity","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then TriggerServerEvent("CMG:changeIdentity")end end,RMenu:Get("confirm","identity"))end,function()end)end)local o=false;local function p(q)local r=GetPlayerFromServerId(q)if r==-1 then return"CHAR_BLOCKED",nil end;local s=GetPlayerPed(r)if s==0 then return"CHAR_BLOCKED",nil end;local t=RegisterPedheadshotTransparent(s)local u=GetGameTimer()while not IsPedheadshotReady(t)do if GetGameTimer()-u>2500 or not IsPedheadshotValid(t)then UnregisterPedheadshot(t)return"CHAR_BLOCKED",nil end;Citizen.Wait(0)end;return GetPedheadshotTxdString(t),t end;RegisterNetEvent("CMG:showIdentity",function(v,w,x,y,z,A,B,C,D)o=true;RequestStreamedTextureDict("driving_licence")while not HasStreamedTextureDictLoaded("driving_licence")do Citizen.Wait(0)end;local E,F=p(v)local G=w and"full"or"provisional"local H=CMG.getFontId("Akrobat-ExtraLight")x=string.upper(x)y=string.upper(y)while o do DrawSprite("driving_licence",G,0.15,0.5,0.3,0.3,0.0,255,255,255,255)DrawSprite(E,E,0.05,0.5,0.07,0.1,0.0,255,255,255,255)DrawAdvancedTextNoOutline(0.2,0.413,0.005,0.0028,0.25,x,70,70,71,255,H,1)DrawAdvancedTextNoOutline(0.2,0.426,0.005,0.0028,0.25,y,70,70,71,255,H,1)DrawAdvancedTextNoOutline(0.2,0.456,0.005,0.0028,0.25,string.format("%s ENGLAND",z),70,70,71,255,H,1)DrawAdvancedTextNoOutline(0.2,0.470,0.005,0.0028,0.25,B,70,70,71,255,H,1)DrawAdvancedTextNoOutline(0.2,0.484,0.005,0.0028,0.25,C,70,70,71,255,H,1)DrawAdvancedTextNoOutline(0.2,0.510,0.005,0.0028,0.35,A,70,70,71,255,H,1)for I,J in pairs(D)do DrawAdvancedTextNoOutline(0.2,0.534+I*0.018,0.005,0.0028,0.25,J,70,70,71,255,H,1)end;Citizen.Wait(0)end;SetStreamedTextureDictAsNoLongerNeeded("driving_licence")if F then UnregisterPedheadshot(F)end end)RegisterNetEvent("CMG:hideIdentity",function()o=false end)