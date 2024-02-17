function onCreate() 
makeAnimatedLuaSprite('hands','bgs/followed/hands', -20, -390)
addAnimationByPrefix('hands','i','i',8,true)
scaleObject('hands', 1, 1)
setProperty('hands.visible', true);
setProperty('hands.alpha',0)
addLuaSprite('hands', false)

makeAnimatedLuaSprite('chandelier','bgs/followed/chandelier', -40, -350)
addAnimationByPrefix('chandelier','idle','i0',14,true)
scaleObject('chandelier', 1, 1)
setProperty('chandelier.visible', true);
setProperty('chandelier.alpha',0)
addLuaSprite('chandelier', false)

makeAnimatedLuaSprite('chandelier2','bgs/followed/chandelier', -40, -350)
addAnimationByPrefix('chandelier2','idle','i0',14,true)
scaleObject('chandelier2', 1, 1)
setProperty('chandelier2.visible', false);
addLuaSprite('chandelier2', true)

--puppets

makeAnimatedLuaSprite('bonnie','bgs/followed/puppets/bonnie', -23, -348)
addAnimationByPrefix('bonnie','fallidle','fall0000',24,false)
addAnimationByPrefix('bonnie','fall','fall0',24,false)
addAnimationByPrefix('bonnie','idle','idle0',24,false)
scaleObject('bonnie', 1, 1)
setProperty('bonnie.visible', true);
setProperty('bonnie.alpha',0)
addLuaSprite('bonnie', false)

makeAnimatedLuaSprite('chica','bgs/followed/puppets/chica', -10, -348)
addAnimationByPrefix('chica','fallidle','fall0000',24,false)
addAnimationByPrefix('chica','fall','fall0',24,false)
addAnimationByPrefix('chica','idle','idle0',24,false)
scaleObject('chica', 1, 1)
setProperty('chica.visible', true);
setProperty('chica.alpha',0)
addLuaSprite('chica', false)

makeAnimatedLuaSprite('foxy','bgs/followed/puppets/foxy', -20, -357)
addAnimationByPrefix('foxy','fallidle','fall0000',24,false)
addAnimationByPrefix('foxy','fall','fall0',24,false)
addAnimationByPrefix('foxy','idle','idle0',24,false)
scaleObject('foxy', 1, 1)
setProperty('foxy.visible', true);
setProperty('foxy.alpha',0)
addLuaSprite('foxy', false)

makeAnimatedLuaSprite('freddy','bgs/followed/puppets/freddy', -32, -342)
addAnimationByPrefix('freddy','fallidle','fall0000',24,false)
addAnimationByPrefix('freddy','fall','fall0',24,false)
addAnimationByPrefix('freddy','idle','idle0',24,false)
scaleObject('freddy', 1, 1)
setProperty('freddy.visible', true);
setProperty('freddy.alpha',0)
addLuaSprite('freddy', false)

makeAnimatedLuaSprite('bonnie2','bgs/followed/puppets/bonnie2',390, -125)
addAnimationByPrefix('bonnie2','i','i',8,true)
scaleObject('bonnie2', 1, 1)
setProperty('bonnie2.visible', false);
setProperty('bonnie2.alpha',1)
addLuaSprite('bonnie2', false)

makeAnimatedLuaSprite('chica2','bgs/followed/puppets/chica2', 140, -160)
addAnimationByPrefix('chica2','i','i',8,true)
scaleObject('chica2', 1, 1)
setProperty('chica2.visible', false);
setProperty('chica2.alpha',1)
addLuaSprite('chica2', false)

makeAnimatedLuaSprite('foxy2','bgs/followed/puppets/foxy2', 80, -55)
addAnimationByPrefix('foxy2','i','i',8,true)
scaleObject('foxy2', 1, 1)
setProperty('foxy2.visible', false);
setProperty('foxy2.alpha',1)
addLuaSprite('foxy2', false)

makeAnimatedLuaSprite('freddy2','bgs/followed/puppets/freddy2', 480, -45)
addAnimationByPrefix('freddy2','i','i',8,true)
scaleObject('freddy2', 0.9, 0.9)
setProperty('freddy2.visible', false);
setProperty('freddy2.alpha',1)
addLuaSprite('freddy2', false)
end

function onEvent(name,value1,value2)
	if name == 'puppts' then 
   
  if value1 == 'puppets' then
  doTweenAlpha('fadein1', 'chandelier', 1, 1.3, 'sineIn');
  doTweenAlpha('fadein2', 'freddy', 1, 1.3, 'sineIn');
  doTweenAlpha('fadein3', 'foxy', 1, 1.3, 'sineIn');
  doTweenAlpha('fadein4', 'chica', 1, 1.3, 'sineIn');
  doTweenAlpha('fadein5', 'bonnie', 1, 1.3, 'sineIn');
  setProperty('defaultCamZoom', 1.75)
  setProperty('isCameraOnForcedPos', true)
		doTweenX('camX', 'camFollowPos', 340, 2.35, 'sineInOut')
		doTweenX('camX2', 'camFollow', 340, 2.35, 'sineInOut')
		doTweenY('camY', 'camFollowPos', -20, 2.35, 'sineInOut')
		doTweenY('camY2', 'camFollow', -20, 2.35, 'sineInOut')
  end
  if value1 == 'hands' then
  doTweenAlpha('fadein', 'hands', 1, 0.5, 'sineIn');
  end
  if value1 == 'chand' then
  setProperty('chandelier2.visible', true);
  setProperty('chandelier.visible', false);
  end
  if value1 == 'pu' then
  setProperty('defaultCamZoom', 2.15)
  setProperty('isCameraOnForcedPos', false)
  end
  if value1 == 'puppet2' then
  cancelTween('zoomIn')
  setProperty('hands.visible', true);
  setProperty('freddy.visible', false);
  setProperty('foxy.visible', false);
  setProperty('chica.visible', false);
  setProperty('bonnie.visible', false);
  setProperty('freddy2.visible', true);
  setProperty('foxy2.visible', true);
  setProperty('chica2.visible', true);
  setProperty('bonnie2.visible', true);
  end
  if value1 == 'fredbye' then
  setProperty('hands.visible', true);
  setProperty('freddy.visible', false);
  setProperty('foxy.visible', false);
  setProperty('chica.visible', false);
  setProperty('bonnie.visible', false);
  setProperty('freddy2.visible', false);
  setProperty('foxy2.visible', true);
  setProperty('chica2.visible', true);
  setProperty('bonnie2.visible', true);
  end
  if value1 == 'bonbye' then
  setProperty('hands.visible', true);
  setProperty('freddy.visible', false);
  setProperty('foxy.visible', false);
  setProperty('chica.visible', false);
  setProperty('bonnie.visible', false);
  setProperty('freddy2.visible', false);
  setProperty('foxy2.visible', true);
  setProperty('chica2.visible', true);
  setProperty('bonnie2.visible', false);
  end
  if value1 == 'chibye' then
  doTweenAlpha('fadeout', 'chica2', 0, 1, 'sineOut');
  setProperty('hands.visible', true);
  setProperty('freddy.visible', false);
  setProperty('foxy.visible', false);
  setProperty('chica.visible', false);
  setProperty('bonnie.visible', false);
  setProperty('freddy2.visible', false);
  setProperty('foxy2.visible', true);
  setProperty('chica2.visible', true);
  setProperty('bonnie2.visible', false);
    end
  end
end