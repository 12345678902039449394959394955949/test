function onCreate()
makeAnimatedLuaSprite('sttat', 'bgs/followed/sttat', -20, -40)
addLuaSprite('sttat', true)
addAnimationByPrefix('sttat', 'sttat i', 'sttat i', 15, true)
scaleObject('sttat', 2.3, 2.3)
setObjectCamera('sttat', 'camOther')
setScrollFactor('sttat', 1, 1)
setProperty('sttat.alpha',0)
end

function onEvent(name,value1,value2)
	if name == 'sttat' then 

 if value1 == '1' then
 doTweenAlpha('fadein', 'sttat', 1, 0.4, 'sineIn');
   end
   
  if value1 == '0' then
 doTweenAlpha('fadeout', 'sttat', 0, 0.2, 'sineOut');
    end
  end
end