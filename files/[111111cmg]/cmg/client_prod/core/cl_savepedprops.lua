local a=nil;local b=nil;local c=nil;local d=nil;Citizen.CreateThread(function()while true do local e=CMG.getPlayerPed()SetPedCanLosePropsOnDamage(e,false,0)local f=GetPedPropIndex(e,0)if f~=-1 then if f~=a then a=f end;local g=GetPedPropTextureIndex(CMG.getPlayerPed(),0)if g~=b then b=g end end;local h=GetPedPropIndex(CMG.getPlayerPed(),1)if h~=c and h~=-1 then c=h end;local i=GetPedDrawableVariation(CMG.getPlayerPed(),1)if i~=d and i~=0 then d=i end;Wait(1000)end end)RegisterCommand("putonhat",function()SetPedPropIndex(CMG.getPlayerPed(),0,a,b)end)RegisterCommand("putonglasses",function()SetPedPropIndex(CMG.getPlayerPed(),1,c)end)RegisterCommand("putonmask",function()SetPedComponentVariation(CMG.getPlayerPed(),1,d,0,2)end)