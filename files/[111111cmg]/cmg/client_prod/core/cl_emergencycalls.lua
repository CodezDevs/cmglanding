globalHideEmergencyCallUI=false;local a=false;local b=1;local c=1;local d={}local e={}local f={}local g=0.06;local h;local i;local j=6;local k="ALL"local function l()f={}f[1]={}c=1;local m=0;local n=0;for o,p in pairs(d)do if k=="ALL"or k=="STAFF"and p[6]=="admin"or k=="JOB"and p[6]~="admin"then if n%j==0 then m=m+1;c=c+1;n=0;f[m]={}f[m][n+1]=p else f[m][n+1]=p end;n=n+1 end end end;RegisterNetEvent("CMG:addEmergencyCall",function(q,r,s,t,u,v,w)if v=="admin"and CMG.getStaffLevel()>0 then tvRP.notify("~b~Admin ticket received.")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t elseif v=="met"and globalOnPoliceDuty then tvRP.notify("~b~MET Police call received.")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t elseif v=="nhs"and globalNHSOnDuty then tvRP.notify("~b~NHS call received.")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t elseif v=="lfb"and globalLFBOnDuty then tvRP.notify("~b~LFB call received.")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t elseif v=="hmp"and globalOnPrisonDuty then tvRP.notify("~b~HMP call received.")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t elseif v=="aa"and globalOnAADuty then tvRP.notify("~b~AA call received. (`) to open call manager!")PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)local x=#(t-GetEntityCoords(CMG.getPlayerPed()))table.insert(d,{q,r,s,x,u,v,w})l()e[q]=t end end)RegisterNetEvent("CMG:removeEmergencyCall",function(q)for o,p in pairs(d)do if p[1]==q then table.remove(d,o)end end;l()end)local y=false;local function z(A)if i=="nhs"then local B=AddBlipForCoord(A.x,A.y,A.z)SetBlipSprite(B,480)SetBlipColour(B,2)Citizen.CreateThread(function()Citizen.Wait(300000)RemoveBlip(B)end)end end;Citizen.CreateThread(function()while true do if a then SetScriptGfxDrawOrder(0.0)DrawRect(0.251,0.528,0.485,0.056,0,0,0,150)SetScriptGfxDrawOrder(0.0)DrawRect(0.251,0.559,0.485,0.0059999999999999,0,168,255,150)SetScriptGfxDrawOrder(0.0)DrawRect(0.251,0.775,0.485,0.426,0,0,0,150)DrawAdvancedText(0.339,0.529,0.005,0.0028,0.51,"CMG Call Manager",255,255,255,255,7,0)DisableControlAction(0,200,true)local C=0;local D,E,F=0,168,255;if f[b]~=nil then for G,p in ipairs(f[b])do local q,r,s,x,u,v,w=table.unpack(p)DrawAdvancedText(0.458,0.616+C*g,0.005,0.0028,0.4,u,255,255,255,255,6,0)if v=="admin"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..s.." - Distance "..math.floor(x).."m - "..w.." mins ago",255,20,10,255,6,1)elseif v=="met"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..tostring(s).." - Distance "..math.floor(x).."m - "..w.." mins ago",0,50,255,255,6,1)elseif v=="nhs"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..s.." - Distance "..math.floor(x).."m - "..w.." mins ago",0,255,50,255,6,1)elseif v=="lfb"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..s.." - Distance "..math.floor(x).."m - "..w.." mins ago",255,140,0,255,6,1)elseif v=="hmp"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..s.." - Distance "..math.floor(x).."m - "..w.." mins ago",117,144,255,255,6,1)elseif v=="aa"then DrawAdvancedText(0.414,0.592+C*g,0.005,0.0028,0.36,r.." - ID: "..s.." - Distance "..math.floor(x).."m - "..w.." mins ago",255,255,0,255,6,1)end;if CursorInArea(0.2692,0.4723,0.5962+C*g,0.6305+C*g)then DrawRect(0.371,0.615+C*g,0.205,0.035,D,E,F,150)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)h=q;i=v;if h~=nil then y=v=="nhs"SetNewWaypoint(e[h].x,e[h].y)end end elseif q==h then DrawRect(0.371,0.615+C*g,0.205,0.035,D,E,F,150)else DrawRect(0.371,0.615+C*g,0.205,0.035,0,0,0,150)end;C=C+1 end end;if CursorInArea(0.2557,0.2916,0.9444,0.9759)and(not h or i~="admin")then DrawRect(0.274,0.961,0.037,0.032,D,E,F,150)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if d[h]~=nil then for o,p in pairs(d)do if p[1]==h then table.remove(d,o)end end;l()else local H=false;for o,p in pairs(d)do if not H then table.remove(d,o)H=true end end;l()end end else DrawRect(0.274,0.961,0.037,0.032,0,0,0,150)end;if CursorInArea(0.3072,0.3468,0.9444,0.9759)then DrawRect(0.328,0.96,0.04,0.032,D,E,F,150)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if b<=1 then tvRP.notify("~r~Lowest page reached")else b=b-1 end end else DrawRect(0.328,0.96,0.04,0.032,0,0,0,150)end;if CursorInArea(0.3697,0.4088,0.9444,0.9759)then DrawRect(0.39,0.96,0.04,0.032,D,E,F,150)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if b>=c-1 then tvRP.notify("~r~Max page reached")else b=b+1 end end else DrawRect(0.39,0.96,0.04,0.032,0,0,0,150)end;if CursorInArea(0.4234,0.4614,0.9444,0.9759)then DrawRect(0.444,0.96,0.037,0.03,D,E,F,150)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if h~=nil then TriggerServerEvent("CMG:acceptEmergencyCall",h)z(e[h])a=not a;y=false;SetNewWaypoint(e[h].x,e[h].y)TriggerEvent("CMG:showHUD",true)globalHideEmergencyCallUI=false;SetBigmapActive(false,false)setCursor(0)inGUICMG=false;for o,p in pairs(globalBlips)do SetBlipAlpha(p,255)end else local H=false;local I;for o,p in pairs(d)do if not H then I=p[1]H=true end end;if I~=nil then TriggerServerEvent("CMG:acceptEmergencyCall",I)z(e[I])a=not a;y=false;SetNewWaypoint(e[I].x,e[I].y)TriggerEvent("CMG:showHUD",true)globalHideEmergencyCallUI=false;SetBigmapActive(false,false)setCursor(0)inGUICMG=false;for o,p in pairs(globalBlips)do SetBlipAlpha(p,255)end else tvRP.notify("~r~No calls available.")end end end else DrawRect(0.444,0.96,0.037,0.03,0,0,0,150)end;DrawAdvancedText(0.453,0.964,0.005,0.0028,0.4,b.." / "..c-1,255,255,255,255,6,0)DrawAdvancedText(0.369,0.963,0.005,0.0028,0.4,"Deny (-)",255,0,0,255,4,0)DrawAdvancedText(0.423,0.963,0.005,0.0028,0.4,"Previous",255,255,255,255,4,0)DrawAdvancedText(0.485,0.963,0.005,0.0028,0.4,"Next",255,255,255,255,4,0)DrawAdvancedText(0.539,0.963,0.005,0.0028,0.4,"Accept (=)",12,255,26,255,4,0)if IsDisabledControlJustPressed(1,84)and(not h or i~="admin")then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if d[h]~=nil then for o,p in pairs(d)do if p[1]==h then table.remove(d,o)end end;l()else local H=false;for o,p in pairs(d)do if not H then table.remove(d,o)H=true end end;l()end end;if IsDisabledControlJustPressed(1,83)then PlaySound(-1,"SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET",0,0,1)if h~=nil then TriggerServerEvent("CMG:acceptEmergencyCall",h)z(e[h])a=not a;y=false;SetNewWaypoint(e[h].x,e[h].y)TriggerEvent("CMG:showHUD",true)globalHideEmergencyCallUI=false;SetBigmapActive(false,false)setCursor(0)inGUICMG=false;for o,p in pairs(globalBlips)do SetBlipAlpha(p,255)end else local H=false;local I;for o,p in pairs(d)do if not H then I=p[1]H=true end end;if I~=nil then TriggerServerEvent("CMG:acceptEmergencyCall",I)z(e[I])a=not a;y=false;SetNewWaypoint(e[I].x,e[I].y)TriggerEvent("CMG:showHUD",true)globalHideEmergencyCallUI=false;SetBigmapActive(false,false)setCursor(0)inGUICMG=false;for o,p in pairs(globalBlips)do SetBlipAlpha(p,255)end else tvRP.notify("~r~No calls available.")end end end;if CMG.isEmergencyService()then DrawAdvancedText(0.305,0.963,0.005,0.0028,0.4,k,255,255,255,255,4,0)if CursorInArea(0.1917,0.2276,0.9444,0.9759)then DrawRect(0.21,0.961,0.037,0.032,D,E,F,200)if IsControlJustPressed(1,329)or IsDisabledControlJustPressed(1,329)then if k=="ALL"then k="STAFF"l()elseif k=="STAFF"then k="JOB"l()elseif k=="JOB"then k="ALL"l()end end else DrawRect(0.21,0.961,0.037,0.032,0,0,0,200)end else k="ALL"end;if CMG.isNewPlayer()then drawNativeNotification("Press ~INPUT_ENTER_CHEAT_CODE~ to toggle the call manager.")end end;Wait(0)end end)Citizen.CreateThread(function()while true do if IsControlJustPressed(0,243)or IsDisabledControlJustReleased(0,200)and a then a=not a;if not a then TriggerEvent("CMG:showHUD",true)globalHideEmergencyCallUI=false;SetBigmapActive(false,false)setCursor(0)inGUICMG=false;for o,p in pairs(globalBlips)do SetBlipAlpha(p,255)end;if y then local J=CMG.getPlayerCoords()SetNewWaypoint(J.x,J.y)y=false end else TriggerEvent("CMG:showHUD",false)globalHideEmergencyCallUI=true;SetBigmapActive(true,true)setCursor(1)inGUICMG=true;for o,p in pairs(globalBlips)do SetBlipAlpha(p,0)end end end;Wait(0)end end)Citizen.CreateThread(function()while true do for o,p in pairs(f)do for K,L in pairs(p)do L[7]=L[7]+1 end end;Wait(60000)end end)