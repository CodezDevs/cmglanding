local a=false;local b=0;local c=0;local d=0;local e=module("cfg/cfg_cctv")Citizen.CreateThread(function()while true do local f=GetEntityCoords(PlayerPedId(),false)for g=1,#e.Locations do local h=#(f-e.Locations[g].camBox.position)e.Locations[g].camBox.distance=h end;Wait(250)end end)Citizen.CreateThread(function()while true do for g=1,#e.Locations do local h=e.Locations[g].camBox.distance;if e.DebugMode then local i=PlayerPedId()local f=GetEntityCoords(i,false)local j=GetEntityRotation(i,2)print("X: "..f.x.."Y: "..f.y.."Z: "..f.z.."H: "..j)end;if h<=1.0 then local k=e.Locations[g].camBox.label;local l=e.Locations[g].camBox.position.x;local m=e.Locations[g].camBox.position.y;local n=e.Locations[g].camBox.position.z;CMG.DrawText3D(vector3(l,m,n),tostring("~o~[E]~w~ Use "..k.." Cameras"),0.35)if IsControlJustPressed(1,38)and d==0 and h<=1.2 then local o=e.Locations[g].cameras[1].x;local p=e.Locations[g].cameras[1].y;local q=e.Locations[g].cameras[1].z;local r=e.Locations[g].cameras[1].r;SetFocusPosAndVel(o,p,q,o,p,q)ChangeSecurityCamera(o,p,q,r)SendNUIMessage({type="enablecam",label=e.Locations[g].cameras[1].label,box=e.Locations[g].camBox.label})b=g;c=1;FreezeEntityPosition(GetPlayerPed(PlayerId()),true)end end;if d~=0 then local s=CreateInstuctionScaleform("instructional_buttons")DrawScaleformMovieFullscreen(s,255,255,255,255,0)SetTimecycleModifier("scanline_cam_cheap")SetTimecycleModifierStrength(2.0)if e.HideRadar then DisplayRadar(false)end;if IsControlJustPressed(1,194)then CloseSecurityCamera()SendNUIMessage({type="disablecam"})if e.HideRadar then DisplayRadar(true)end end;if IsControlJustPressed(1,174)then local t;if c==1 then t=#e.Locations[b].cameras else t=c-1 end;local u=e.Locations[b].cameras[t].x;local v=e.Locations[b].cameras[t].y;local w=e.Locations[b].cameras[t].z;local x=e.Locations[b].cameras[t].r;SetFocusPosAndVel(u,v,w,u,v,w)SendNUIMessage({type="updatecam",label=e.Locations[b].cameras[t].label})ChangeSecurityCamera(u,v,w,x)c=t end;if IsControlJustPressed(1,175)then local t;if c==#e.Locations[b].cameras then t=1 else t=c+1 end;local u=e.Locations[b].cameras[t].x;local v=e.Locations[b].cameras[t].y;local w=e.Locations[b].cameras[t].z;local x=e.Locations[b].cameras[t].r;SetFocusPosAndVel(u,v,w,u,v,w)SendNUIMessage({type="updatecam",label=e.Locations[b].cameras[t].label})ChangeSecurityCamera(u,v,w,x)c=t end;if e.Locations[b].cameras[c].canRotate then local y=GetCamRot(d,2)if IsControlPressed(1,32)then if y.x<=0.0 then SetCamRot(d,y.x+0.7,0.0,y.z,2)end end;if IsControlPressed(1,33)then if y.x>=-50.0 then SetCamRot(d,y.x-0.7,0.0,y.z,2)end end;if IsControlPressed(1,34)then SetCamRot(d,y.x,0.0,y.z+0.7,2)end;if IsControlPressed(1,35)then SetCamRot(d,y.x,0.0,y.z-0.7,2)end end end end;Citizen.Wait(0)end end)function ChangeSecurityCamera(z,A,B,C)if d~=0 then DestroyCam(d,0)d=0 end;local D=CreateCam("DEFAULT_SCRIPTED_CAMERA",1)SetCamCoord(D,z,A,B)SetCamRot(D,C.x,C.y,C.z,2)RenderScriptCams(1,0,0,1,1)Citizen.Wait(250)d=D end;function CloseSecurityCamera()DestroyCam(d,0)RenderScriptCams(0,0,1,1,1)d=0;ClearTimecycleModifier()SetFocusEntity(GetPlayerPed(PlayerId()))if e.HideRadar then DisplayRadar(true)end;FreezeEntityPosition(GetPlayerPed(PlayerId()),false)end;function CreateInstuctionScaleform(E)local E=RequestScaleformMovie(E)while not HasScaleformMovieLoaded(E)do Citizen.Wait(0)end;BeginScaleformMovieMethod(E,"CLEAR_ALL")EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"SET_CLEAR_SPACE")ScaleformMovieMethodAddParamInt(200)EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"SET_DATA_SLOT")ScaleformMovieMethodAddParamInt(0)InstructionButton(GetControlInstructionalButton(1,175,true))InstructionButtonMessage("Go Forward")EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"SET_DATA_SLOT")ScaleformMovieMethodAddParamInt(1)InstructionButton(GetControlInstructionalButton(1,194,true))InstructionButtonMessage("Close Camera")EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"SET_DATA_SLOT")ScaleformMovieMethodAddParamInt(2)InstructionButton(GetControlInstructionalButton(1,174,true))InstructionButtonMessage("Go Back")EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"DRAW_INSTRUCTIONAL_BUTTONS")EndScaleformMovieMethod()BeginScaleformMovieMethod(E,"SET_BACKGROUND_COLOUR")ScaleformMovieMethodAddParamInt(0)ScaleformMovieMethodAddParamInt(0)ScaleformMovieMethodAddParamInt(0)ScaleformMovieMethodAddParamInt(80)EndScaleformMovieMethod()return E end;function InstructionButton(F)ScaleformMovieMethodAddParamPlayerNameString(F)end;function InstructionButtonMessage(G)BeginTextCommandScaleformString("STRING")AddTextComponentSubstringKeyboardDisplay(G)EndTextCommandScaleformString()end