function onCreate()
makeLuaSprite('warning', 'bgs/followed/warning', 120, 60)
addLuaSprite('warning', true);
scaleObject('warning', 0.55, 0.55)
setScrollFactor('warning', 1, 1)
setObjectCamera('warning', 'game')
setProperty('warning.alpha',0)
setProperty('warning.visible',true);

makeAnimatedLuaSprite('followed2','bgs/followed/cutscenes/followed2', -50, -70)
addAnimationByPrefix('followed2','im kms','im kms',12,false)
scaleObject('followed2', 1, 1)
setObjectCamera('followed2', 'game')
setProperty('followed2.alpha',0)
setProperty('followed2.visible', false);
addLuaSprite('followed2', false)
end

function onEvent(name,value1,value2)
	if name == 'warning' then 

 if value1 == '1' then
 doTweenAlpha('fadeIn', 'warning', 1, 1.2, 'sineIn');
 doTweenZoom('zoomIn', 'camGame', 1.5, 60, 'sineOut')
 setProperty('followed2.visible', true);
 setProperty('black.visible', true);
 setProperty('bonniee.visible', false);
  end
  if value1 == '0' then
 doTweenAlpha('fadeout', 'warning', 0, 1.3,'sineOut');
 doTweenAlpha('f1', 'followed2', 1, 1, 'sineIn');
 setProperty('black.visible', false);
 cancelTween('zoomIn')
  end
  if value1 == '00' then
 doTweenAlpha('fadeout', 'black', 0, 1.3,'sineOut');
 cancelTween('zoomIn')
  end
  if value1 == 'custscene0' then
 setProperty('followed2.visible', false);
 setProperty('cutscene2.visible', false);
  end
  if value1 == 'cutscene2' then
	 startVideoSprite('1')
    end
  end
end

