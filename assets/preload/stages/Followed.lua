function onCreate()
makeAnimatedLuaSprite('idle','bgs/followed/idle',0, 0)
addAnimationByPrefix('idle','idle','idle eyes',12,true)
scaleObject('idle', 1, 1)
setProperty('idle.visible', false);
addLuaSprite('idle', false)

makeAnimatedLuaSprite('idle2','bgs/followed/idle',0, 0)
addAnimationByPrefix('idle2','idle','idle eyes',12,true)
scaleObject('idle2', 1.2, 1.2)
setProperty('idle2.visible', false);
addLuaSprite('idle2', false)

makeAnimatedLuaSprite('eyesFreddy','bgs/followed/eyesOwn/eyesFreddy',0, 0)
addAnimationByPrefix('eyesFreddy','idle','idle eyes',12,true)
scaleObject('eyesFreddy', 1.2, 1.2)
setProperty('eyesFreddy.visible', false);
setProperty('eyesFreddu.alpha', 1)
addLuaSprite('eyesFreddy', false)

makeLuaSprite('freddyy', 'bgs/followed/freddy', -40, -195)
addLuaSprite('freddyy', false)
scaleObject('freddyy', 1, 1.5)
setScrollFactor('freddyy', 1, 1)
setProperty('freddyy.alpha', 1)
setProperty('freddyy.visible',false);

makeAnimatedLuaSprite('eyesChica','bgs/followed/eyesOwn/eyesChica',0, 0)
addAnimationByPrefix('eyesChica','idle','idle eyes',12,true)
scaleObject('eyesChica', 1.2, 1.2)
setProperty('eyesChica.visible', false)
setProperty('eyesChica.alpha', 1)
addLuaSprite('eyesChica', false);

makeLuaSprite('chicaa', 'bgs/followed/chica', -40, -320)
addLuaSprite('chicaa', false)
scaleObject('chicaa', 1, 1.5)
setScrollFactor('chicaa', 1, 1)
setProperty('chicaa.alpha', 1)
setProperty('chicaa.visible',false);

makeAnimatedLuaSprite('eyesBonnie','bgs/followed/eyesOwn/eyesBonnie',0, 0)
addAnimationByPrefix('eyesBonnie','idle','idle eyes',12,true)
scaleObject('eyesBonnie', 1.2, 1.2)
setProperty('eyesBonnie.visible', false);
setProperty('eyesBonnie.alpha', 1)
addLuaSprite('eyesBonnie', false);

makeLuaSprite('bonniee', 'bgs/followed/bonnie', -40, -320)
addLuaSprite('bonniee', false)
scaleObject('bonniee', 1, 1.5)
setScrollFactor('bonniee', 1, 1)
setProperty('Bonniee.alpha', 1)
setProperty('Bonniee.visible',false);

makeAnimatedLuaSprite('gogo','bgs/followed/gogogobg', -30, -30)
addAnimationByPrefix('gogo','i','i',5,true)
scaleObject('gogo', 1, 1)
setProperty('gogo.visible', false);
addLuaSprite('gogo', false)

makeAnimatedLuaSprite('sttat', 'stage/gofish/sttat', 0, 0)
addLuaSprite('sttat', true)
addAnimationByPrefix('sttat', 'sttat i', 'sttat i', 8, true)
setObjectCamera('sttat', 'camOther')
scaleObject('sttat', 1, 1)
setScrollFactor('sttat', 1, 1)
end

function onEvent(name,value1,value2)
	if name == 'sttat' then 

 if value1 == '1' then
 doTweenAlpha('fadein', 'sttat', 1, 1.3, 'sineIn');
   end
   
  if value1 == '0' then
 doTweenAlpha('fadeout', 'sttat', 0, 1.3, 'sineOut');
    end
  end
end

function onEvent(name,value1,value2)
	if name == 'FollowedBGChange' then 
   
  if value1 == 'hey' then
 cameraFlash('other', 'FFFFFF', '1')
 setProperty('defaultCamZoom', 2.15)
 triggerEvent('Change Character', 'bf', 'followbfintro')
 triggerEvent('Change Character', 'dad', 'shadowfred')
 setProperty('followed2.visible', false);
   end
  if value1 == 'eyes' then
 triggerEvent('Change Character', 'bf', 'followbf')
 setProperty('idle.visible', true);
 setProperty('idle2.visible', false);
   end
  if value1 == 'freddy' then
 cancelTween('zoomIn')
 setProperty('defaultCamZoom', 1.7)
 triggerEvent('Change Character', 'dad', 'followedfreddynew')
 setProperty('dad.x', -25)
 setProperty('dad.y', -80)
 setProperty('eyesFreddy.visible', true);
 setProperty('freddyy.visible', true);
 setProperty('bonniee.visible', false);
 setProperty('idle.visible', false);
 setProperty('idle2.visible', false);
  end
  if value1 == 'bonnie' then
 triggerEvent('Change Character', 'dad', 'bonniefollownew')
 setProperty('dad.x', -25)
 setProperty('dad.y', -80)
 doTweenAlpha('fadeout', 'freddy2', 0, 0.5, 'sineOut');
 setProperty('eyesFreddy.visible', false);
 setProperty('freddyy.visible', false);
 setProperty('eyesBonnie.visible', true);
 setProperty('bonniee.visible', true);
 setProperty('idle.visible', false);
 setProperty('eyes2.visible', false);
 end
 if value1 == 'chica' then
 triggerEvent('Change Character', 'dad', 'chicafollownew')
 setProperty('dad.x', 55)
 setProperty('dad.y', -80)
 doTweenAlpha('fadeout', 'bonnie2', 0, 0.5, 'sineOut');
 setProperty('eyesFreddy.visible', false);
 setProperty('freddyy.visible', false);
 setProperty('eyesBonnie.visible', false);
 setProperty('bonniee.visible', false);
 setProperty('eyesChica.visible', true);
 setProperty('chicaa.visible', true);
 setProperty('idle.visible', false);
 setProperty('eyes2.visible', false);
  end
 if value1 == 'foxy' then
 triggerEvent('Change Character', 'dad', 'foxyfollow')
 setProperty('dad.x', -120)
 setProperty('dad.y', -80)
 setProperty('eyesFreddy.visible', false);
 setProperty('freddyy.visible', false);
 setProperty('eyesBonnie.visible', false);
 setProperty('bonniee.visible', false);
 setProperty('eyesChica.visible', false);
 setProperty('chicaa.visible', false);
 setProperty('gogo.visible', true);
 setProperty('idle.visible', false);
 setProperty('eyes2.visible', false);
 end
 if value1 == 'nothing' then
 setProperty('defaultCamZoom', 2.3)
 triggerEvent('Change Character', 'dad', 'nothingfollowed')
 setProperty('eyesFreddy.visible', false);
 setProperty('freddyy.visible', false);
 setProperty('eyesBonnie.visible', false);
 setProperty('bonniee.visible', false) ;
 setProperty('eyesChica.visible', false);
 setProperty('chicaa.visible', false);
 setProperty('gogo.visible', false);
 setProperty('idle.visible', false);
 setProperty('eyes2.visible', false);
    end
  end
end