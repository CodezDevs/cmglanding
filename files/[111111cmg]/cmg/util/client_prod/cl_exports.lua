local a;local function b(c,d,e,f)if f==nil then f=function()end end;if a then SendNUIMessage({act="close_prompt"})while a do Wait(0)end end;SendNUIMessage({act="open_prompt",type=e,title=c,text=tostring(d)})SetNuiFocus(true)a=f end;RegisterNUICallback("prompt",function(g,f)if g.act=="close"then if a then a(g.result)a=nil end end end)function CMG.clientPrompt(c,d,f)b(c,d,"client",f)end;function tvRP.prompt(c,d)b(c,d,"server",nil)end;RegisterNUICallback("prompt",function(g,f)if g.act=="close"then SetNuiFocus(false)if g.type~="client"then vRPserver.promptResult({g.result})end end end)exports("prompt",CMG.clientPrompt)exports("playSound",function(h)SendNUIMessage({transactionType=h})end)function CMG.copyToClipboard(i)SendNUIMessage({act="copy_clipboard",text=tostring(i)})end