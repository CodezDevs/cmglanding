insideDiamondCasino=false;AddEventHandler("CMG:onClientSpawn",function(a,b)if b then local c=vector3(1121.7922363281,239.42251586914,-50.440742492676)local d=function(e)insideDiamondCasino=true;tvRP.setCanAnim(false)CMG.overrideTime(12,0,0)TriggerEvent("CMG:enteredDiamondCasino")end;local f=function(e)insideDiamondCasino=false;tvRP.setCanAnim(true)CMG.cancelOverrideTimeWeather()TriggerEvent("CMG:exitedDiamondCasino")end;local g=function(e)end;CMG.createArea("diamondcasino",c,100.0,20,d,f,g,{})end end)