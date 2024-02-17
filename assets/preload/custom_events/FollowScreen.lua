function onCreate()
makeAnimatedLuaSprite('flashingend','bgs/followed/flashingend',-127, -35)
addAnimationByPrefix('flashingend','1','1',50,true)
addLuaSprite('flashingend', false)
setObjectCamera('flashingend', 'hud')
scaleObject('flashingend', 3.25, 3.25)
setProperty('flashingend.visible', false);

makeAnimatedLuaSprite('flashingend1','bgs/followed/flashingend',-127, -36)
addAnimationByPrefix('flashingend1','2','2',14,true)
addLuaSprite('flashingend1', false)
setObjectCamera('flashingend1', 'hud')
scaleObject('flashingend1', 3.25, 3.25)
setProperty('flashingend1.visible', false);

makeAnimatedLuaSprite('flashingend2','bgs/followed/flashingend',-50, -35)
addAnimationByPrefix('flashingend2','3','3',16,true)
addLuaSprite('flashingend2', false)
setObjectCamera('flashingend2', 'hud')
scaleObject('flashingend2', 3.1, 3.1)
setProperty('flashingend2.visible', false);

makeAnimatedLuaSprite('flashingend3','bgs/followed/flashingend',-100, -35)
addAnimationByPrefix('flashingend3','4','4',12,false)
addLuaSprite('flashingend3', false)
setObjectCamera('flashingend3', 'hud')
scaleObject('flashingend3', 3.2, 3.1)
setProperty('flashingend3.visible', false);
end

function onEvent(name,value1,value2)
if name == 'FollowScreen' then 

 if value1 == 'screen1' then
 cameraFlash('game', '4B0082', '0.5')
  setProperty('flashingend.visible', false);
  setProperty('flashingend1.visible', false);
  setProperty('flashingend2.visible', false);
  setProperty('flashingend3.visible', false);
  end
  if value1 == 'screen2' then
  setProperty('flashingend.visible', true);
  setProperty('flashingend1.visible', false);
  setProperty('flashingend2.visible', false);
  setProperty('flashingend3.visible', false);
  end
  if value1 == 'screen3' then
  setProperty('flashingend.visible', false);
  setProperty('flashingend1.visible', true);
  setProperty('flashingend2.visible', false);
  setProperty('flashingend3.visible', false);
  end
  if value1 == 'screen4' then
  setProperty('flashingend.visible', false);
  setProperty('flashingend1.visible', false);
  setProperty('flashingend2.visible', true);
  setProperty('flashingend3.visible', false);
  end
  if value1 == 'screen5' then
  setProperty('flashingend.visible', false);
  setProperty('flashingend1.visible', false);
  setProperty('flashingend2.visible', false);
  setProperty('flashingend3.visible', true);
  end
  if value1 == 'no' then
  setProperty('flashingend.visible', false);
  setProperty('flashingend1.visible', false);
  setProperty('flashingend2.visible', false);
  setProperty('flashingend3.visible', false);
  end
 end
end