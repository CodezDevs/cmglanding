function getGenericTextInput(a)if a==nil then a=""end;AddTextEntry('FMMC_MPM_NA',"Enter "..tostring(a))DisplayOnscreenKeyboard(1,"FMMC_MPM_NA","Enter "..tostring(a).." message","","","","",30)while UpdateOnscreenKeyboard()==0 do DisableAllControlActions(0)Wait(0)end;if GetOnscreenKeyboardResult()then local b=GetOnscreenKeyboardResult()if b then return b end end;return false end