noclipActive=false;local a=nil;local b=1;local c=0;local d=false;local e=false;local f={controls={openKey=288,goUp=85,goDown=38,turnLeft=34,turnRight=35,goForward=32,goBackward=33,reduceSpeed=36,increaseSpeed=21},speeds={{label="Very Slow",speed=0.1},{label="Slow",speed=0.5},{label="Normal",speed=2},{label="Fast",speed=4},{label="Very Fast",speed=6},{label="Extremely Fast",speed=10},{label="Extremely Fast v2.0",speed=20},{label="Max Speed",speed=25}},offsets={y=0.5,z=0.2,h=3},bgR=0,bgG=0,bgB=0,bgA=80}local function g(h)BeginTextCommandScaleformString("STRING")AddTextComponentSubstringKeyboardDisplay(h)EndTextCommandScaleformString()end;local function i(j)ScaleformMovieMethodAddParamPlayerNameString(j)end;local function k(l)local l=RequestScaleformMovie(l)while not HasScaleformMovieLoaded(l)do Citizen.Wait(1)end;BeginScaleformMovieMethod(l,"CLEAR_ALL")EndScaleformMovieMethod()BeginScaleformMovieMethod(l,"SET_CLEAR_SPACE")ScaleformMovieMethodAddParamInt(200)EndScaleformMovieMethod()BeginScaleformMovieMethod(l,"SET_DATA_SLOT")ScaleformMovieMethodAddParamInt(1)i(GetControlInstructionalButton(1,f.controls.goBackward,true))i(GetControlInstructionalButton(1,f.controls.goForward,true))g("Go Forwards/Backwards")EndScaleformMovieMethod()BeginScaleformMovieMethod(l,"SET_DATA_SLOT")ScaleformMovieMethodAddParamInt(0)i(GetControlInstructionalButton(2,f.controls.increaseSpeed,true))i(GetControlInstructionalButton(2,f.controls.reduceSpeed,true))g("Change Speed ("..f.speeds[b].label..")")EndScaleformMovieMethod()BeginScaleformMovieMethod(l,"DRAW_INSTRUCTIONAL_BUTTONS")EndScaleformMovieMethod()BeginScaleformMovieMethod(l,"SET_BACKGROUND_COLOUR")ScaleformMovieMethodAddParamInt(f.bgR)ScaleformMovieMethodAddParamInt(f.bgG)ScaleformMovieMethodAddParamInt(f.bgB)ScaleformMovieMethodAddParamInt(f.bgA)EndScaleformMovieMethod()return l end;function tvRP.toggleNoclip()if CMG.inEvent()and CMG.getUserId()~=1 and CMG.getUserId()~=2 then return end;noclipActive=not noclipActive;if IsPedInAnyVehicle(CMG.getPlayerPed(),false)then c=GetVehiclePedIsIn(CMG.getPlayerPed(),false)else c=CMG.getPlayerPed()end;SetEntityCollision(c,not noclipActive,not noclipActive)FreezeEntityPosition(c,noclipActive)SetEntityInvincible(c,noclipActive)SetVehicleRadioEnabled(c,not noclipActive)if noclipActive then SetEntityVisible(CMG.getPlayerPed(),false,false)tvRP.setCanAnim(false)else SetEntityVisible(CMG.getPlayerPed(),true,false)tvRP.setCanAnim(true)end end;RegisterKeyMapping('noclip','Staff Noclip','keyboard','F4')RegisterCommand("noclip",function()if CMG.getStaffLevel()>=4 then TriggerServerEvent("CMG:noClip")end end)Citizen.CreateThread(function()local m=k("instructional_buttons")local n=f.speeds[b].speed;while true do if noclipActive then DrawScaleformMovieFullscreen(m)local o=0.0;local p=0.0;local q=CMG.getPosition()local r,s,t=q.x,q.y,q.z;local u,v,w=tvRP.getCamDirection()if IsDisabledControlJustPressed(1,f.controls.reduceSpeed)then if b~=1 then b=b-1;n=f.speeds[b].speed end;k("instructional_buttons")end;if IsDisabledControlJustPressed(1,f.controls.increaseSpeed)then if b~=8 then b=b+1;n=f.speeds[b].speed end;k("instructional_buttons")end;if IsControlPressed(0,f.controls.goForward)then r=r+n*u;s=s+n*v;t=t+n*w end;if IsControlPressed(0,f.controls.goBackward)then r=r-n*u;s=s-n*v;t=t-n*w end;if IsControlPressed(0,f.controls.goUp)then p=f.offsets.z end;if IsControlPressed(0,f.controls.goDown)then p=-f.offsets.z end;local x=GetEntityHeading(c)SetEntityVisible(PlayerPedId(),false,0)SetEntityVelocity(c,0.0,0.0,0.0)SetEntityRotation(c,u,v,w,0,false)SetEntityHeading(c,x)SetEntityCoordsNoOffset(c,r,s,t,noclipActive,noclipActive,noclipActive)end;Wait(0)end end)function CMG.isStaffedOn()return e end;local function y()local z=0;local A=CMG.getStaffRank()if A=="founder"then z=12 elseif A=="leaddeveloper"then z=11 elseif A=="developer"then z=10 elseif A=="communitymanager"then z=9 elseif A=="staffmanager"then z=8 elseif A=="headadmin"then z=7 elseif A=="senioradmin"then z=6 elseif A=="admin"then z=5 elseif A=="seniormod"then z=4 elseif A=="mod"then z=3 elseif A=="support"then z=2 elseif A=="trial"then z=1 end;local B=GetPedDrawableVariation(PlayerPedId(),11)SetPedComponentVariation(PlayerPedId(),11,B,z,0)end;RegisterNetEvent("CMG:OMioDioMode",function(C)if CMG.getStaffLevel()>0 then if not C then if CMG.isStaffedOn()then e=false;CMG.setRedzoneTimerDisabled(false)SetEntityInvincible(CMG.getPlayerPed(),false)SetPlayerInvincible(PlayerId(),false)SetPedCanRagdoll(CMG.getPlayerPed(),true)ClearPedBloodDamage(CMG.getPlayerPed())ResetPedVisibleDamage(CMG.getPlayerPed())ClearPedLastWeaponDamage(CMG.getPlayerPed())SetEntityProofs(CMG.getPlayerPed(),false,false,false,false,false,false,false,false)SetEntityCanBeDamaged(CMG.getPlayerPed(),true)if not CMG.isPurge()then SetEntityHealth(CMG.getPlayerPed(),200)end;tvRP.setCustomization(a)end else if not CMG.isStaffedOn()then e=true;CMG.setRedzoneTimerDisabled(true)a=tvRP.getCustomization()if CMG.getModelGender()=="male"then CMG.loadCustomisationPreset("StaffMale")if CMG.isHalloween()then CMG.loadCustomisationPreset("StaffHalloweenMale")end;if CMG.isChristmas()then CMG.loadCustomisationPreset("StaffChristmasMale")end else CMG.loadCustomisationPreset("StaffFemale")if CMG.isHalloween()then CMG.loadCustomisationPreset("StaffHalloweenFemale")end;if CMG.isChristmas()then CMG.loadCustomisationPreset("StaffChristmasFemale")end end;y()end end end end)function CMG.getModelGender()local D=CMG.getPlayerPed()if GetEntityModel(D)==`mp_f_freemode_01`then return"female"else return"male"end end;Citizen.CreateThread(function()while true do if CMG.isStaffedOn()then local D=CMG.getPlayerPed()SetEntityInvincible(D,true)SetPlayerInvincible(PlayerId(),true)SetPedCanRagdoll(D,false)ClearPedBloodDamage(D)ResetPedVisibleDamage(D)ClearPedLastWeaponDamage(D)SetEntityProofs(D,true,true,true,true,true,true,true,true)SetEntityCanBeDamaged(D,false)if not CMG.isPurge()then SetEntityHealth(D,200)end;if not CMG.isPlayerInAdminTicket()then drawNativeText("~r~Reminder: You are /staffon'd.")end end;Wait(0)end end)globalIgnoreDeathSound=false;RegisterNetEvent("CMG:deathSound",function(E)local F=GetEntityCoords(CMG.getPlayerPed())local G=#(F-E)if not globalIgnoreDeathSound and G<=15 then SendNUIMessage({transactionType=CMG.getDeathSound()})end end)RegisterNetEvent("CMG:deleteAllVehicles",function()tvRP.notify("~g~Attempting to delete any vehicle you try to enter for 100 tries")Citizen.CreateThread(function()for H=0,100,1 do vehicleTmp=GetVehiclePedIsTryingToEnter(CMG.getPlayerPed())if vehicleTmp then SetVehicleDoorsLocked(vehicleTmp,1)DeleteEntity(GetEntityAttachedTo(CMG.getPlayerPed()))DeleteEntity(vehicleTmp)Wait(250)SetEntityAsMissionEntity(vehicleTmp,true,true)DeleteEntity(GetEntityAttachedTo(CMG.getPlayerPed()))DeleteEntity(vehicleTmp)SetVehicleDoorsLocked(vehicleTmp,1)DeleteEntity(GetEntityAttachedTo(CMG.getPlayerPed()))DeleteEntity(vehicleTmp)SetVehicleDoorsLocked(vehicleTmp,1)DeleteEntity(GetEntityAttachedTo(CMG.getPlayerPed()))DeleteEntity(vehicleTmp)SetVehicleDoorsLocked(vehicleTmp,1)end;Wait(5)end;tvRP.notify("~g~Attempting to delete any vehicles complete")end)end)RegisterNetEvent("CMG:tpToWaypoint",function()local I=CMG.getPlayerPed()local J=GetVehiclePedIsUsing(I)if IsPedInAnyVehicle(I)then I=J end;if not IsWaypointActive()then tvRP.notify("~r~ Map Marker not found.")return end;local K=GetFirstBlipInfoId(8)local r,s,t=table.unpack(GetBlipInfoIdCoord(K))local L;local M=false;local N={100.0,150.0,50.0,0.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0,550.0,600.0,650.0,700.0,750.0,800.0}for H,O in ipairs(N)do SetEntityCoordsNoOffset(I,r,s,O,0,0,1)Wait(10)L,t=GetGroundZFor_3dCoord(r,s,O)if L then t=t+3;M=true;break end end;if not M then t=1000;GiveWeaponToPed(PlayerPedId(),`GADGET_PARACHUTE`)end;SetEntityCoordsNoOffset(I,r,s,t,0,0,1)tvRP.notify("~g~ Teleported to waypoint.")TriggerServerEvent("CMG:logTeleportWaypoint",r,s,t)end)RegisterNetEvent("CMG:showBlips",function(P)if CMG.getStaffLevel()>=6 then d=P;if d then tvRP.notify("~g~Blips enabled")else tvRP.notify("~r~Blips disabled")for Q,R in ipairs(GetActivePlayers())do local S=GetPlayerPed(R)if GetPlayerPed(R)~=CMG.getPlayerPed()then S=GetPlayerPed(R)blip=GetBlipFromEntity(S)RemoveBlip(blip)end end end end end)Citizen.CreateThread(function()while true do if d then for Q,R in ipairs(GetActivePlayers())do local I=GetPlayerPed(R)if I~=GetPlayerPed(-1)then local blip=GetBlipFromEntity(I)local T=GetPlayerServerId(R)local U=CMG.clientGetUserIdFromSource(T)if not DoesBlipExist(blip)and not CMG.isUserHidden(U)then blip=AddBlipForEntity(I)SetBlipSprite(blip,1)ShowHeadingIndicatorOnBlip(blip,true)local V=GetVehiclePedIsIn(I,false)SetBlipSprite(blip,1)ShowHeadingIndicatorOnBlip(blip,true)SetBlipRotation(blip,math.ceil(GetEntityHeading(V)))SetBlipNameToPlayerName(blip,R)SetBlipScale(blip,0.85)SetBlipAlpha(blip,255)end end end end;Wait(1000)end end)RegisterNetEvent("CMG:playAprilFoolsAdminWaitSound",function()SendNUIMessage({transactionType='elevatormusic'})end)function CMG.hasStaffBlips()return d end