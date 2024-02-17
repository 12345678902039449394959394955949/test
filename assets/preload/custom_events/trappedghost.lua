function onCreate()
makeAnimatedLuaSprite('bonnie', 'bgs/trapped/bonnie', 1290, 280);
  addLuaSprite('bonnie', false)
  scaleObject('bonnie', 0.35, 0.35)
  setProperty('bonnie.alpha', 0.25)
  addAnimationByPrefix('bonnie', 'i ', 'i', 6, true)

  makeAnimatedLuaSprite('abome', 'bgs/trapped/abome', -100, 280);
  addLuaSprite('abome', false)
  scaleObject('abome', 0.35, 0.35)
  setProperty('abome.alpha', 0.25)
  addAnimationByPrefix('abome', 'i ', 'i', 6, true)

  makeAnimatedLuaSprite('ourple', 'bgs/trapped/phantomourple', 870, 560);
  addLuaSprite('ourple', false)
  scaleObject('ourple', 0.7, 0.7)
  setProperty('ourple.alpha', 0.25)
  addAnimationByPrefix('ourple', 'i ', 'i', 6, true)

--Hide

setProperty('bonnie.visible',false);
setProperty('abome.visible',false);
setProperty('ourple.visible',false);
end

function onEvent(n, v1, v2)
if n == 'trappedghost' then 

if v1 == 'bonnie' then
  setProperty('bonnie.visible',true);
  end

  if v1 == 'bon' then
  setProperty('bonnie.visible',false);
  end

  if v1 == 'abome' then
  setProperty('abome.visible',true);
  end

  if v1 == 'abo' then
  setProperty('abome.visible',false);
  end

  if v1 == 'all' then
  cameraFlash('game', 'FFFFFF', '0.3')
  setProperty('abome.visible',true);
  setProperty('bonnie.visible',true);
  setProperty('ourple.visible',true);
  end

  if v1 == 'bye' then
  setProperty('abome.visible',false);
  setProperty('bonnie.visible',false);
  setProperty('ourple.visible',false);
    end
 end
end

function onBeatHit()
    if curBeat % 1 == 0 then
   doTweenAlpha('f1', 'bonnie', 0.5, 0.35, 'sineIn');
   doTweenAlpha('fO2', 'bonnie', 0.25, 0.15, 'sineOut');
   doTweenAlpha('f3', 'abome', 0.5, 0.25, 'sineIn');
   doTweenAlpha('f4', 'abome', 0.25, 0.15, 'sineOut');
   doTweenAlpha('f5', 'ourple', 0.55, 0.35, 'sineIn');
   doTweenAlpha('f6', 'ourple', 0.25, 0.15, 'sineOut');
   end
end