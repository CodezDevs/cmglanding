local a={enabled=true,locations={{coords=vector3(88.950886535645,-1314.8494140625,21.245265960693),number='3'},{coords=vector3(104.18,-1293.94,29.26),number='1'},{coords=vector3(102.24,-1290.54,29.26),number='2'}}}local b=false;local c={['Choose_Favorite']='What button do you want to use for %s?',['Select_Favorite']='Add a quick bind animation',['Manage_Favorites']='Manage quick bind animations',['Close']='Cancel',['Updated_Favorites']='Updated quick bind animations.',['Remove?']='Remove "%s" as a quick bind animation?',['Yes']='Yes',['No']='No',['Animations']='Animations',['Synced']='Synced animations',['Sync_Request']='Do you want to %s %s?',['Pole_Dance']='[~r~E~w~] Poledance',['Noone_Close']='No one close.',['Not_In_Car']='You\'re not in a vehicle!'}local d=false;AddEventHandler("CMG:onClientSpawn",function(e,f)if f then for g,h in pairs(a.locations)do local function i()end;local function j()d=false end;local function k(l)local m=a.locations[l.poleId].number;if not d then CMG.DrawText3D(h.coords,c['Pole_Dance'],0.35)if IsControlJustReleased(0,51)then CMG.loadAnimDict('mini@strip_club@pole_dance@pole_dance'..m)local n=NetworkCreateSynchronisedScene(h.coords,vector3(0.0,0.0,0.0),2,false,false,1065353216,0,1.3)NetworkAddPedToSynchronisedScene(CMG.getPlayerPed(),n,'mini@strip_club@pole_dance@pole_dance'..m,'pd_dance_0'..m,1.5,-4.0,1,1,1148846080,0)NetworkStartSynchronisedScene(n)RemoveAnimDict("mini@strip_club@pole_dance@pole_dance")d=true end end end;CMG.createArea("poledance_"..g,h.coords,2.25,6,i,j,k,{poleId=g})end end end)