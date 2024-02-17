function onCreate()
makeAnimatedLuaSprite('shadow', 'bgs/lurking/shadowbontransition', 0, 0)
addLuaSprite('shadow', true)
addAnimationByPrefix('shadow', 'shadowbontransition idle', 'shadowbontransition idle', 12, false)
setProperty('shadow.visible', false);
end

function onEvent(n,v1,v2)
if n == "shad" then
   
   if v1 == '1' then    
   setProperty('shadow.visible', true);
   end
   if v1 == '0' then
   setProperty('shadow.visible', false);
    end
   end
end