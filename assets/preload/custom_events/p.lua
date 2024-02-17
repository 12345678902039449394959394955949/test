function onCreate()
makeLuaSprite('p', 'bgs/followed/p', -40, -20)
addLuaSprite('p', false)
scaleObject('p', 1.2, 1.2)
setScrollFactor('p', 1, 1)
setObjectCamera('p', 'hud')
setProperty('p.alpha',1)
setProperty('p.visible',false);
end

function onEvent(name,value1,value2)
	if name == 'p' then 

 if value1 == '1' then
 setProperty('p.visible',true);
   end
  if value1 == '0' then
 doTweenAlpha('fadeout', 'p', 0, 1.2, 'sineOut');
    end
  end
end