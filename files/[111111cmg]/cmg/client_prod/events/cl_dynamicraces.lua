local a=module("cfg/events/cfg_dynamicraces")local b={}local function c()b={state="none",elapsedSeconds=0,elapsedMinutes=0,currentPosition=1,currentCheckpoint=0,checkpoints={},checkpointsUUIDs={},maxCheckpoints=0,distanceToNextCheckpoint=10,vehicle="",collisionDisabled=false,vehicleId="",vehicleColour=1,startPosition=-1,disableVehicleWeapons=true,currentVehicleSpawned=0,holdingF=0,currentLap=1,maxLaps=1,finished=false,racePositionScaleform=nil}end;c()Citizen.CreateThread(function()for d,e in pairs(a.dynamicRaces)do local f=nil;CMG.registerEventMenuItem("Races",d,function()if not currentEvent.isActive then RageUI.Separator("Minimum Players: 4")RageUI.Separator("Maximum Players: "..tostring(#e.positions))local g={RightLabel=not f and"~y~DEFAULT"or f}RageUI.ButtonWithStyle("Vehicle Selection","Enter a specific vehicle to use or leave empty to use default.",g,true,function(h,i,j)if j then CMG.clientPrompt("Enter Spawncode","",function(k)f=#k>=3 and string.upper(k)or nil end)end end)RageUI.ButtonWithStyle("Start Event",nil,{RightLabel="→→→"},true,function(h,i,j)if j then TriggerServerEvent("CMG:startEvent","Races",d,4,#e.positions,{customSpawncode=f})end end)end end)CMG.registerEventCleanupHandler(d,function()Citizen.InvokeNative(0x5FFE9B4144F9712F,false)SetNetworkVehicleAsGhost(b.currentVehicleSpawned,false)DeleteVehicle(b.currentVehicleSpawned)for l,m in pairs(b.checkpointsUUIDs)do CMG.deleteCheckpoint("rockstar_races",m)end;SetPlayerFallDistance(PlayerId(),5.0)CMG.cleanupRockstarMaps()TriggerMusicEvent("BST_STOP")c()end)end end)RegisterNetEvent("CMG:loadRockstarRace",function(d,n,o)local p=PlayerPedId()SetEntityCoords(p,o.x,o.y,o.z)FreezeEntityPosition(PlayerPedId(),true)b.state="waiting"CMG.setEventMusic("FAM2_CHASE_RT")b.checkpointData={}loadMap(n,true)if n.repairCheckpoints then for q=1,#n.repairCheckpoints do local r=n.repairCheckpoints[q]local s,t=CMG.createCheckpoint("rockstar_races",5,r.x,r.y,r.z,0.0,0.0,0.0,10.0,255,255,0,127,0,function(t,s)PlaySoundFrontend(-1,"RACE_PLACED","HUD_AWARDS")AnimpostfxPlay("SuccessNeutral",0,false)CMG.deleteCheckpoint("rockstar_races",t)SetVehicleEngineHealth(b.currentVehicleSpawned,1000.0)SetVehicleBodyHealth(b.currentVehicleSpawned,1000.0)SetVehicleDeformationFixed(b.currentVehicleSpawned)SetVehicleFixed(b.currentVehicleSpawned)end)end end end)RegisterNetEvent("CMG:dynamicRaceVehicleSelect",function(d,u)currentEvent.drawPlayersTimeBar=false;CMG.stopEventSequence()Citizen.Wait(0)local v=a.dynamicRaces[d]BusyspinnerOff()CMG.startVehicleSelection(u.xyz,u.w,v.vehicleOptions,20,function(w)if currentEvent.data.customSpawncode then b.vehicleId=currentEvent.data.customSpawncode elseif v.vehicleOptions[w]then b.vehicleId=v.vehicleOptions[w].model end end,function(x)b.vehicleColour=x end)end)local function y()b.spawnProtection=true;Citizen.InvokeNative(0x5FFE9B4144F9712F,true)SetNetworkVehicleAsGhost(b.currentVehicleSpawned,true)SetEntityAlpha(b.currentVehicleSpawned,155)SetTimeout(3000,function()Citizen.InvokeNative(0x5FFE9B4144F9712F,false)SetNetworkVehicleAsGhost(b.currentVehicleSpawned,false)SetEntityAlpha(b.currentVehicleSpawned,255)b.spawnProtection=false end)end;local function z(t,s)if s==b.checkpoints[1]then PlaySoundFrontend(-1,"RACE_PLACED","HUD_AWARDS")CMG.deleteCheckpoint("rockstar_races",t)b.currentCheckpoint=b.currentCheckpoint+1;b.currentLocalCheckpoint=b.currentLocalCheckpoint+1;table.remove(b.checkpoints,1)TriggerServerEvent("CMG:updateDynamicRaceCheckpoint",currentEvent.eventId,b.currentLap)b.disableVehicleWeapons=false;if b.currentCheckpoint==b.numOfCheckpointsPerLap*b.currentLap and b.currentLap<b.maxLaps then b.currentLap=b.currentLap+1;b.currentLocalCheckpoint=0 end;local A=0;if b.currentCheckpoint+1==b.maxCheckpoints then A=4 elseif b.currentCheckpoint+1>=b.maxCheckpoints then return end;internal_CreateCustomCheckpoint(b.currentLocalCheckpoint+1,b.raceData,A)else CMG.announceMpSmallMsg("Wrong checkpoint!","",6,2000)end end;local function B(q,C,A)local r=C.customCheckpoints[q]b.checkpointData[q]=r;local D;if C.customCheckpoints[q+1]then D=C.customCheckpoints[q+1]else D=r end;local E,F=CMG.createCheckpoint("rockstar_races",A,r.x,r.y,r.z,D.x,D.y,D.z,10.0,255,255,0,50,0,function(t,s)z(t,s)end)table.insert(b.checkpoints,E)table.insert(b.checkpointsUUIDs,F)SetCheckpointCylinderHeight(E,25.0,25.0,10.0)end;function internal_CreateCustomCheckpoint(q,C,A)B(q,C,A)end;local function G()if b.vehicleId==""then drawNativeNotification("Hold ~INPUT_ENTER~ to reset your player to the previous checkpoint.")else drawNativeNotification("Hold ~INPUT_ENTER~ to reset your vehicle to the previous checkpoint.")end end;RegisterNetEvent("CMG:dynamicRaceClientJoin",function(C)b.raceData=C;CMG.setPlayerCanOpenLeaderboard(true)CMG.enableEventPlayerBlips(true)CMG.enableEventPlayerTags(true,false)CMG.endVehicleSelection()print("[CMG] Waiting for eventMap to load.")while eventMapHasLoaded==false do Wait(0)end;print("[CMG] eventMap loaded.")if b.vehicleId==""then CMG.stopEventSequence()currentEvent.drawPlayersTimeBar=false;BusyspinnerOff()end;G()local o=C.startPosition;b.collisionDisabled=C.collisionDisabled;b.maxLaps=C.maxLaps;b.numOfCheckpointsPerLap=C.maxCheckpoints-1;b.maxCheckpoints=b.numOfCheckpointsPerLap*b.maxLaps+1;if C.christmasWeather then CMG.setWeather("XMAS")end;B(1,C,0)local p=PlayerPedId()SetEntityCoords(p,o.x,o.y,o.z)b.checkpointData[0]=o;if b.vehicleId~=""then b.startPosition=o;local H=CMG.TriggerServerCallback("CMG:requestRaceRespawn",b.vehicleId,o)b.currentVehicleSpawned=CMG.getObjectId(H,"races first spawn")SetVehicleColours(b.currentVehicleSpawned,b.vehicleColour,b.vehicleColour)SetVehicleOnGroundProperly(b.currentVehicleSpawned)SetEntityHeading(b.currentVehicleSpawned,o.w)y()else SetEntityHeading(p,o.w)end;b.state="racing"PlaySoundFrontend(-1,"5s","MP_MISSION_COUNTDOWN_SOUNDSET",0)TriggerEvent("CMG:streetRacingShowCountdownTimer",5)local I=GetGameTimer()while GetGameTimer()-I<5000 do FreezeEntityPosition(CMG.getPlayerVehicle(),true)FreezeEntityPosition(CMG.getPlayerPed(),true)Wait(0)end;if b.vehicleId~=""then FreezeEntityPosition(PlayerPedId(),false)FreezeEntityPosition(b.currentVehicleSpawned,false)SetVehicleIsRacing(b.currentVehicleSpawned,true)else FreezeEntityPosition(p,false)end;b.startTime=GetGameTimer()local q=0;while b.state=="racing"do q=q+1;if b.elapsedSeconds==59 then b.elapsedSeconds=0;b.elapsedMinutes=b.elapsedMinutes+1 else b.elapsedSeconds=b.elapsedSeconds+1 end;if q%5==0 then b.holdingF=0 end;Wait(1000)end;b.elapsedSeconds=0;b.elapsedMinutes=0 end)local function J(K,u,L,M)ClearTimecycleModifier()local N={handle=Scaleform("MP_CELEBRATION"),handle2=Scaleform("MP_CELEBRATION_BG"),handle3=Scaleform("MP_CELEBRATION_FG")}for O,P in pairs(N)do P.RunFunction("CLEANUP",{"WINNER"})P.RunFunction("CREATE_STAT_WALL",{"WINNER","HUD_COLOUR_BLACK","70.0"})P.RunFunction("SET_PAUSE_DURATION",{function()ScaleformMovieMethodAddParamFloat(2.5)end})P.RunFunction("ADD_TIME_TO_WALL",{"WINNER",L,"CELEB_TIME"})P.RunFunction("ADD_POSITION_TO_WALL",{"WINNER",u,"1ST",false,false})if M~=0 then P.RunFunction("ADD_CASH_TO_WALL",{"WINNER",M,true})end;P.RunFunction("ADD_WINNER_TO_WALL",{"WINNER","CELEB_WINNER",K,"",0,false,"",false})P.RunFunction("ADD_BACKGROUND_TO_WALL",{"WINNER",75,0})P.RunFunction("SHOW_STAT_WALL",{"WINNER"})end;return N.handle,N.handle2,N.handle3 end;RegisterNetEvent("CMG:endDynamicRace",function(K,M)b.state="end"b.endTime=GetGameTimer()local Q=b.endTime-b.startTime;local R,S,T=J(K,b.currentPosition,Q,M)local U=true;SetTimeout(15000,function()U=false end)while U do Wait(0)HideHudAndRadarThisFrame()DrawScaleformMovieFullscreenMasked(S.Handle,T.Handle,255,255,255,255)R.Render2D()end end)local function V(u,W)ClearTimecycleModifier()local P=b.racePositionScaleform;if not P then P=Scaleform("RACE_POSITION")b.racePositionScaleform=P end;P.RunFunction("SET_GATES_POSITION",{u,W})P.RunFunction("SHOW_RACE_MODULE",{0,false})P.RunFunction("SHOW_RACE_MODULE",{1,false})P.RunFunction("SHOW_RACE_MODULE",{2,false})P.Render2D()end;local function X(Y)local Z=Y/1000%60;local _=Y/(1000*60)%60;local a0=Y/(1000*60*60)%24;local a1=string.sub(tostring(Z-math.floor(Z)),3,5):gsub('%.','')a1=string.gsub(a1,"%.","")if string.len(a1)==1 then a1=a1 .."00"elseif string.len(a1)==2 then a1=a1 .."0"end;return string.format("%02d:%02d:%02d.%s",math.floor(a0),math.floor(_),math.floor(Z),a1)end;local function a2(a3)if b.startTime then if not a3 then a3=GetGameTimer()end;local a4=a3-b.startTime;return X(a4)else return"00:00:00"end end;CreateThread(function()TriggerMusicEvent("BST_STOP")while true do if b.state=="waiting"then FreezeEntityPosition(PlayerPedId(),true)elseif b.state=="racing"then if b.dnfTimer then DrawGTATimerBar("~r~DNF:~w~",string.format("~r~%d",b.dnfTimer),8)end;DrawGTATimerBar("~y~TIME:~w~",string.format("~y~%02d:%02d",b.elapsedMinutes,b.elapsedSeconds),4)DrawGTATimerBar("~y~CHECKPOINT:~w~",string.format("%d/%d",b.currentCheckpoint,b.maxCheckpoints),3)DrawGTATimerBar("~y~LAP:~w~",string.format("%d/%d",b.currentLap,b.maxLaps),2)DrawGTATimerBar("~y~DISTANCE:~w~",string.format("%dm",math.floor(b.distanceToNextCheckpoint)),1)local p=PlayerPedId()local a5=GetEntityCoords(p)local a6=GetVehiclePedIsIn(p)local a7=0;if a6~=0 then a7=GetEntityRoll(a6)SetPedRagdollOnCollision(p,false)SetPedCanRagdollFromPlayerImpact(p,false)SetPedCanRagdoll(p,false)SetPedCanBeKnockedOffVehicle(p,1)SetVehicleColours(b.currentVehicleSpawned,b.vehicleColour,b.vehicleColour)SetVehicleEngineOn(b.currentVehicleSpawned,true,true,false)else SetCurrentPedWeapon(p,`WEAPON_UNARMED`,true)SetPlayerFallDistance(PlayerId(),50.0)end;local a8=b.currentCheckpoint-(b.currentLap-1)*b.numOfCheckpointsPerLap;b.currentLocalCheckpoint=a8;local a9=b.checkpointData[a8+1]local aa=b.checkpointData[a8]CMG.setEventRespawnPosition(aa)if a9 then local ab=#(vector3(a9.x,a9.y,a9.z)-vector3(aa.x,aa.y,aa.z))local ac=#(a5-vector3(a9.x,a9.y,a9.z))b.distanceToNextCheckpoint=ac;if ac>25 and ac>ab*2.0 and a8~=0 then DoScreenFadeOut(1500)NetworkFadeOutEntity(p,true,false)Wait(1500)if a6==0 then SetEntityCoords(p,aa.x,aa.y,aa.z,0.0,0.0,0.0,false)SetEntityHeading(b.currentVehicleSpawned,aa.w)else SetEntityCoords(a6,aa.x,aa.y,aa.z,0.0,0.0,0.0,false)SetEntityHeading(b.currentVehicleSpawned,aa.w)SetVehicleEngineHealth(a6,1000.0)end;NetworkFadeInEntity(p,0)y()DoScreenFadeIn(1500)Wait(1500)G()elseif GetEntityHealth(p)<=100 then DoScreenFadeOut(1500)NetworkFadeOutEntity(p,true,false)Wait(1500)TriggerEvent("CMG:Revive")Wait(1500)if b.vehicleId~=""then DeleteVehicle(b.currentVehicleSpawned)local H=CMG.TriggerServerCallback("CMG:requestRaceRespawn",b.vehicleId,aa)b.currentVehicleSpawned=CMG.getObjectId(H,"races re-spawn #1")SetVehicleColours(b.currentVehicleSpawned,b.vehicleColour,b.vehicleColour)SetEntityHeading(b.currentVehicleSpawned,aa.w)y()else SetEntityCoords(p,aa.x,aa.y,aa.z,0.0,0.0,0.0,false)SetEntityHeading(p,aa.w)end;NetworkFadeInEntity(p,0)DoScreenFadeIn(1500)Wait(1500)G()elseif a6==0 and b.vehicleId~=""then DoScreenFadeOut(1500)NetworkFadeOutEntity(p,true,false)Wait(1500)TriggerEvent("CMG:Revive")Wait(1500)DeleteVehicle(b.currentVehicleSpawned)local H=CMG.TriggerServerCallback("CMG:requestRaceRespawn",b.vehicleId,aa)b.currentVehicleSpawned=CMG.getObjectId(H,"races re-spawn #2")SetVehicleColours(b.currentVehicleSpawned,b.vehicleColour,b.vehicleColour)SetEntityHeading(b.currentVehicleSpawned,aa.w)y()NetworkFadeInEntity(p,0)DoScreenFadeIn(1500)Wait(1500)G()elseif a7>178 and a7<182 or a7<-178 and a7>-182 then if GetEntitySpeed(b.currentVehicleSpawned)<5 then DoScreenFadeOut(1500)NetworkFadeOutEntity(p,true,false)Wait(1500)y()SetEntityCoords(b.currentVehicleSpawned,aa.x,aa.y,aa.z,0.0,0.0,0.0,false)SetEntityHeading(b.currentVehicleSpawned,aa.w)SetVehicleEngineHealth(b.currentVehicleSpawned,1000.0)SetVehicleBodyHealth(b.currentVehicleSpawned,1000.0)SetVehicleDeformationFixed(b.currentVehicleSpawned)NetworkFadeInEntity(p,0)DoScreenFadeIn(1500)Wait(1500)G()end end end;SetPlayerControl(PlayerId(),true,0)if a6==0 then DisableFirstPersonCamThisFrame()end;V(b.currentPosition,#currentEvent.players)if b.collisionDisabled then Citizen.InvokeNative(0x5FFE9B4144F9712F,true)if b.currentVehicleSpawned~=0 then if DoesEntityExist(b.currentVehicleSpawned)then SetNetworkVehicleAsGhost(b.currentVehicleSpawned,true)SetEntityAlpha(b.currentVehicleSpawned,255)end end;SetEntityAlpha(p,255)for l,ad in pairs(GetGamePool("CVehicle"))do SetEntityAlpha(ad,255)end;local ae=GetActivePlayers()for l,af in pairs(ae)do local ag=GetPlayerPed(af)SetEntityAlpha(ag,255)end end;SetCheckpointRgba(b.checkpoints[1],144,238,144,150)if IsDisabledControlPressed(0,23)then b.holdingF=b.holdingF+1;if b.holdingF>=60 then b.holdingF=0;DoScreenFadeOut(1500)NetworkFadeOutEntity(p,true,false)Wait(1500)TriggerEvent("CMG:Revive")Wait(1500)if b.vehicleId~=""then DeleteVehicle(b.currentVehicleSpawned)local H=CMG.TriggerServerCallback("CMG:requestRaceRespawn",b.vehicleId,aa)b.currentVehicleSpawned=CMG.getObjectId(H,"races re-spawn #3")SetVehicleColours(b.currentVehicleSpawned,b.vehicleColour,b.vehicleColour)SetEntityHeading(b.currentVehicleSpawned,aa.w)y()else SetEntityCoords(p,aa.x,aa.y,aa.z,0.0,0.0,0.0,false)SetEntityHeading(p,aa.w)end;NetworkFadeInEntity(p,0)DoScreenFadeIn(1500)Wait(1500)G()end end;for l,ah in pairs(currentEvent.players)do CMG.updateScoreboard(ah.source,6,a2(ah.finishTime))end end;Wait(0)end end)local function ai()if b.state=="waiting"or b.state=="racing"then DisableControlAction(0,75)DisableControlAction(0,49)DisableControlAction(0,263,true)DisableControlAction(0,264,true)DisableControlAction(0,257,true)DisableControlAction(0,140,true)DisableControlAction(0,141,true)DisableControlAction(0,142,true)DisableControlAction(0,143,true)DisableControlAction(0,24,true)DisableControlAction(0,25,true)if b.disableVehicleWeapons then DisableControlAction(0,68)DisableControlAction(0,70)end end end;CMG.createThreadOnTick(ai)RegisterNetEvent("CMG:setDynamicRacePosition",function(u)if not b.finished then b.currentPosition=u end end)local function aj(ak)for q,al in pairs(currentEvent.players)do if ak==al.source then return al end end;return{name="N/A"}end;local function am(an)local ao={}ao.columns={"Position","Name","Time"}ao.rows={}ao.sortColumn=1;ao.sortAscending=true;ao.formatPlace=true;for q,ak in ipairs(an)do table.insert(ao.rows,{q,"","",false,aj(ak).name,a2(),playerSrc=ak})end;return ao end;RegisterNetEvent("CMG:setDynamicRaceLeaderboard",function(an)if not CMG.isLeaderboardSetup()then local ao=am(an)TriggerEvent("CMG:initScoreboard",ao)else for u,ap in pairs(an)do for l,ah in pairs(currentEvent.players)do if ah.source==ap then CMG.updateScoreboard(ap,1,u)break end end end end end)RegisterNetEvent("CMG:dynamicRaceEarlyWinner",function(aq)b.finished=true;PlaySound(-1,"CHECKPOINT_PERFECT","HUD_MINI_GAME_SOUNDSET",0,0,1)if aq then CMG.announceMpBigMsg("~g~You have won the race!","Race will end in 30 seconds, or if all competitors finish.",5000,false,true)else CMG.announceMpBigMsg("~g~You have finished the race!","Race will end in 30 seconds, or if all competitors finish.",5000,false,true)end end)RegisterNetEvent("CMG:dynamicRacesSetFinishTime",function(ar)for l,ah in pairs(currentEvent.players)do if ah.source==ar then ah.finishTime=GetGameTimer()break end end end)RegisterNetEvent("CMG:startDNFTimer",function()b.dnfTimer=30;while b.state=="racing"do if b.dnfTimer>=1 then b.dnfTimer=b.dnfTimer-1;if b.dnfTimer<=5 then PlaySoundFrontend(-1,"Checkpoint_Buzz","DLC_AW_Frontend_Sounds",false)end end;Citizen.Wait(1000)end end)AddEventHandler("CMG:streetRacingShowCountdownTimer",function(L)CMG.showCountdownTimer(L)end)