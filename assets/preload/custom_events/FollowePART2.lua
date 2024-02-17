function onCreate()
makeLuaSprite('sinnoh2', 'bgs/followed/sinnoh2', 0, 0)
addLuaSprite('sinnoh2', false)
scaleObject('sinnoh2', 1, 1)
setScrollFactor('sinnoh2', 1, 1)
setProperty('sinnoh2.visible',false);

makeLuaSprite('sinnoh2u', 'bgs/followed/sinnoh2u', 0, 0)
addLuaSprite('sinnoh2u', false)
scaleObject('sinnoh2u', 1, 1)
setScrollFactor('sinnoh2u', 1, 1)
setProperty('sinnoh2u.visible',false);

makeAnimatedLuaSprite('finalbg2','bgs/followed/finalbg2',0, 0)
addAnimationByPrefix('finalbg2','i','i',12,true)
addLuaSprite('finalbg2', false)
scaleObject('finalbg2', 1, 1)
setProperty('finalbg2.visible', false);
setProperty('finalbg2.alpha',1)

makeAnimatedLuaSprite('distortedbg','bgs/followed/distortedbg',-230, -35)
addAnimationByPrefix('distortedbg','i','i',12,true)
addLuaSprite('distortedbg', false)
scaleObject('distortedbg', 2.65, 2.65)
setProperty('distortedbg.visible', false);
setProperty('distortedbg.alpha',1)

makeLuaSprite('arcade', 'bgs/followed/arcade', -1400, -840)
addLuaSprite('arcade', true)
scaleObject('arcade', 3.4, 3.4)
setScrollFactor('arcade', 1, 1)
setProperty('arcade.visible',false);
end

function onEvent(name,value1,value2)
	if name == 'FollowePART2' then 

 if value1 == 'sinnoh' then
 cameraFlash('game', '000000', '1.2')
 setProperty('defaultCamZoom', 2.35)
 triggerEvent('Change Character', 'dad', 'sinnoh')
 triggerEvent('Change Character', 'bf', 'followbf3')
 setProperty('sinnoh2.visible',true);
 setProperty('sinnoh2u.visible',true);
 setProperty('finalbg2.visible',false);
   end
  if value1 == 'sinnoh2' then
  cameraFlash('other', 'FFFFFF', '0.4')
 setProperty('sinnoh2.visible',false);
 setProperty('sinnoh2u.visible',false);
 setProperty('finalbg2.visible',true);
  end
  if value1 == 'bye' then
  doTweenAlpha('fadeout', 'finalbg2', 0, 0.7, 'sineOut');
  triggerEvent('Camera Follow Pos', '170', '190')
 setProperty('sinnoh2u.visible',false);
 setProperty('finalbg2.visible',true);
  end
  if value1 == 'part2' then
 triggerEvent('Change Character', 'dad', 'shadow3')
 triggerEvent('Change Character', 'bf', 'followbf4')
 setProperty('defaultCamZoom', 1.65)
  setProperty('distortedbg.visible', true);
  end
   if value1 == 'nothing' then
  triggerEvent('Change Character', 'dad', 'nothing')
  triggerEvent('Change Character', 'bf', 'nothing')
  setProperty('distortedbg.visible', false);
  end
  if value1 == 'part3' then
  doTweenAlpha('fadeout', 'distortedbg', 0, 1, 'sineOut');
  setProperty('arcade.visible', true);
  end
  if value1 == 'end' then
  setProperty('defaultCamZoom', 0.5)
    end
  end
end



