local a=1000;local b=1000;local c=1000;local d="0"local e=vector3(924.99627685547,47.006057739258,81.104507446289)local f=vector3(1089.6083984375,206.60050964355,-48.999725341797)local g=vector3(967.6533203125,63.682018280029,112.55312347412)RMenu.Add('cmgchips','cashier',RageUI.CreateMenu("","",CMG.getRageUIMenuWidth(),CMG.getRageUIMenuHeight(),"shopui_title_casino","shopui_title_casino"))RMenu:Get('cmgchips','cashier'):SetSubtitle("~b~CHIPS")RMenu.Add('casino_enter','casino',RageUI.CreateMenu("","",CMG.getRageUIMenuWidth(),CMG.getRageUIMenuHeight(),"shopui_title_casino","shopui_title_casino"))RMenu:Get('casino_enter','casino'):SetSubtitle("~b~ENTER")RMenu.Add('casino_exit','casino',RageUI.CreateMenu("","",CMG.getRageUIMenuWidth(),CMG.getRageUIMenuHeight(),"shopui_title_casino","shopui_title_casino"))RMenu:Get('casino_exit','casino'):SetSubtitle("~b~EXIT")RMenu.Add('casino_rooftop_exit','casino',RageUI.CreateMenu("","",CMG.getRageUIMenuWidth(),CMG.getRageUIMenuHeight(),"shopui_title_casino","shopui_title_casino"))RMenu:Get('casino_rooftop_exit','casino'):SetSubtitle("~b~EXIT")local h={{model=`u_f_m_casinocash_01`,pedPosition=vector3(1117.671,218.7382,-49.4),pedHeading=100.0,entryPosition=vector3(1116.0776367188,218.04238891602,-50.435089111328)},{model=`u_f_m_casinocash_01`,pedPosition=vector3(20.152572631836,6705.5737304688,-105.85441589355),pedHeading=75.0,entryPosition=vector3(18.445615768433,6705.7485351563,-106.85442352295)}}Citizen.CreateThread(function()for i,j in pairs(h)do CMG.createDynamicPed(j.model,j.pedPosition,100.0,true,"mini@strip_club@idles@bouncer@base","base",75.0,nil,function(k)SetEntityCanBeDamaged(k,0)SetPedAsEnemy(k,0)SetBlockingOfNonTemporaryEvents(k,1)SetPedResetFlag(k,249,1)SetPedConfigFlag(k,185,true)SetPedConfigFlag(k,108,true)SetPedCanEvasiveDive(k,0)SetPedCanRagdollFromPlayerImpact(k,0)SetPedConfigFlag(k,208,true)SetEntityCollision(k,false)SetEntityCoordsNoOffset(k,j.pedPosition.x,j.pedPosition.y,j.pedPosition.z,100.0,0,0)SetEntityHeading(k,j.pedHeading)FreezeEntityPosition(k,true)end)end end)RageUI.CreateWhile(1.0,RMenu:Get('cmgchips','cashier'),nil,function()RageUI.IsVisible(RMenu:Get('cmgchips','cashier'),true,true,true,function()RageUI.ButtonWithStyle("Buy chips","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then local o=getCasinoChips()if tonumber(o)then o=tonumber(o)if o>0 then TriggerServerEvent("CMG:buyChips",o)else tvRP.notify("~r~Negative amount.")end else tvRP.notify("~r~Invalid amount.")end end end)RageUI.ButtonWithStyle("Sell chips","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then local o=getCasinoChips()if tonumber(o)then o=tonumber(o)if o>0 then TriggerServerEvent("CMG:sellChips",o)else tvRP.notify("~r~Negative amount.")end else tvRP.notify("~r~Invalid amount.")end end end)end,function()end)RageUI.IsVisible(RMenu:Get('casino_exit','casino'),true,true,true,function()RageUI.ButtonWithStyle("Exit Diamond Casino","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then TriggerServerEvent("CMG:exitDiamondCasino")tvRP.teleport(e.x,e.y,e.z)if cardObjects then for p,q in pairs(cardObjects)do for i,r in pairs(q)do DeleteObject(r)end end end end end)end,function()end)RageUI.IsVisible(RMenu:Get('casino_enter','casino'),true,true,true,function()RageUI.ButtonWithStyle("Enter Diamond Casino","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n and CMG.getPlayerCombatTimer()==0 and not CMG.inEvent()then TriggerServerEvent("CMG:enterDiamondCasino")tvRP.teleport(f.x,f.y,f.z)end end)RageUI.ButtonWithStyle("Diamond Casino Rooftop","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then tvRP.teleport(g.x,g.y,g.z)end end)end,function()end)RageUI.IsVisible(RMenu:Get('casino_rooftop_exit','casino'),true,true,true,function()RageUI.ButtonWithStyle("Exit Rooftop","",{RightLabel="→→→"},true,function(l,m,n)if l then end;if m then end;if n then tvRP.teleport(e.x,e.y,e.z)end end)end,function()end)end)function showCasinoChipsCashier(s)RageUI.Visible(RMenu:Get('cmgchips','cashier'),s)end;function showCasinoEnter(s)RageUI.Visible(RMenu:Get('casino_enter','casino'),s)end;function showCasinoRooftopExit(s)RageUI.Visible(RMenu:Get('casino_rooftop_exit','casino'),s)end;function showCasinoExit(s)RageUI.Visible(RMenu:Get('casino_exit','casino'),s)end;Citizen.CreateThread(function()while true do if a<1.5 then showCasinoEnter(true)elseif a<2.5 then showCasinoEnter(false)end;if b<1.5 then showCasinoExit(true)elseif b<2.5 then showCasinoExit(false)end;if c<1.5 then showCasinoRooftopExit(true)elseif c<2.5 then showCasinoRooftopExit(false)end;Wait(0)end end)Citizen.CreateThread(function()while true do DrawMarker(27,e.x,e.y,e.z-1.0,0,0,0,0,0,0,1.001,1.0001,0.5001,255,255,255,200,0,0,0,0)DrawMarker(27,f.x,f.y,f.z-1.0,0,0,0,0,0,0,1.001,1.0001,0.5001,255,255,255,200,0,0,0,0)DrawMarker(27,g.x,g.y,g.z-1.0,0,0,0,0,0,0,1.001,1.0001,0.5001,255,255,255,200,0,0,0,0)Wait(0)end end)Citizen.CreateThread(function()while true do local t=GetEntityCoords(CMG.getPlayerPed())a=#(t-e)b=#(t-f)c=#(t-g)Wait(100)end end)function getCasinoChips()AddTextEntry('FMMC_MPM_NA',"Enter chips")DisplayOnscreenKeyboard(1,"FMMC_MPM_NA","Enter chips","","","","",30)while UpdateOnscreenKeyboard()==0 do DisableAllControlActions(0)Wait(0)end;if GetOnscreenKeyboardResult()then local u=GetOnscreenKeyboardResult()if u then return u end end;return false end;RegisterNetEvent("CMG:setDisplayChips",function(v)local w=tostring(v)d=getMoneyStringFormatted(w)end)local x={{position=vector3(1149.3828125,269.19174194336,-52.020873718262),radius=100},{position=vector3(54.053936004639,6742.1513671875,-107.354347229),radius=100},{position=vector3(-1896.8582763672,2069.3537597656,144.86274719238),radius=10},{position=vector3(774.75134277344,-552.91137695312,22.498882293701),radius=100},{position=vector3(-1137.8917236328,-184.71762084961,40.0803565979),radius=50},{position=vector3(422.06201171875,18.277492523193,91.935234069824),radius=25}}AddEventHandler("CMG:onClientSpawn",function(y,z)if z then RequestStreamedTextureDict("CommonMenu")local A=function(B)showCasinoChipsCashier(true)end;local C=function(B)showCasinoChipsCashier(false)end;local D=function(B)end;local E=function(B)if GetRoomKeyFromEntity(PlayerPedId())~=0 then SetScriptGfxDrawOrder(7)DrawSprite("CommonMenu","shop_chips_b",0.89,0.078,0.025,0.030,0.0,255,255,255,255)SetScriptGfxDrawOrder(1)DrawRect(0.934,0.077,0.104,0.036,0,0,0,150)DrawAdvancedTextNoOutline(1.037,0.08,0.005,0.0028,0.52,d,255,255,255,255,7,0)end end;for F,j in pairs(h)do tvRP.addBlip(j.entryPosition.x,j.entryPosition.y,j.entryPosition.z,683,0,"Chips Cashier",0.7,true)tvRP.addMarker(j.entryPosition.x,j.entryPosition.y,j.entryPosition.z,1.0,1.0,1.0,138,43,226,70,50,27)CMG.createArea("chipscashier_"..F,j.entryPosition,1.5,6,A,C,D,{})end;for G,H in pairs(x)do CMG.createArea("casinos_"..G,H.position,H.radius,6,function()end,function()end,E,{})end end end)