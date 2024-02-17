function onCreate()
setProperty('skipCountdown', true)

--Background

  makeLuaSprite('stage2', 'bgs/trapped/window', 0, 0);
	addLuaSprite('stage2', false);
 
 makeAnimatedLuaSprite('fire1', 'bgs/trapped/fire',0, 0)
 addLuaSprite('fire1', false)
 addAnimationByPrefix('fire1', 'fire ', 'fire', 8, true)

	makeLuaSprite('stage', 'bgs/trapped/newbg', 0, 0);
	addLuaSprite('stage', false);

	makeLuaSprite('gradient', 'bgs/trapped/gradient', 0, 0);
	addLuaSprite('gradient', true);
	
	makeLuaSprite('wires', 'bgs/trapped/wires', 0, 0);
	setScrollFactor('wires', 1.3, 1.3)
	addLuaSprite('wires', true);

  makeLuaSprite('blend', 'bgs/trapped/fireblend', -100, 0);
	scaleObject('blend', 1.2, 1.2)
  setProperty('blend.alpha', 0.4)
	addLuaSprite('blend', true);

  makeAnimatedLuaSprite('fire2', 'bgs/trapped/fire', -100, -50)
  addLuaSprite('fire2', true)
  scaleObject('fire2', 2, 2)
  setProperty('fire2.alpha', 0.85)
  setProperty('fire2.alpha', 1)
  addAnimationByPrefix('fire2', 'fire ', 'fire', 12, true)

  makeLuaSprite('stage3', 'bgs/trapped/stage2', 0, 0);
  setProperty('stage3.alpha', 0)
	addLuaSprite('stage3', false);

  makeLuaSprite('stage3flag', 'bgs/trapped/stage2fg', 0, 0);
  scaleObject('stage3flag', 0.8, 0.8)
  setProperty('stage3flag.alpha', 0)
	addLuaSprite('stage3flag', false);

  makeLuaSprite('black','', 0,0)
	makeGraphic('black', 1280, 900,'000000')
	addLuaSprite('black')
    setScrollFactor('black',0,0)
	setObjectCamera("black", 'hud')

--Hide

setProperty('stage.visible',true);
setProperty('stage2.visible',true);
setProperty('gradient.visible',true);
setProperty('wires.visible',true);

setProperty('blend.visible',false);
setProperty('fire1.visible',false);
setProperty('fire2.visible',false);
end

function onEvent(n, v1, v2)
 if n == 'BGtrap' then 

	if v1 == 'begin' then
 doTweenAlpha('fadeoutb', 'black', 0, 5, 'sineInOut')
end

	if v1 == 'bg3' then
  cameraFlash('game', 'FFFFFF', '0.3')
  triggerEvent('Change Character', 'bf', 'brooketrapped2')
  setProperty('dad.alpha', 0.7)

  setProperty('stage3.alpha', 1)
  setProperty('stage3flag.alpha', 1)

  setProperty('stage.visible',false);
  setProperty('stage2.visible',false);
  setProperty('gradient.visible',false);
  setProperty('wires.visible',false);
  setProperty('blend.visible',false);
  setProperty('fire1.visible',false);
  setProperty('fire2.visible',false);
end

  if v1 == 'bg1' then
  cameraFlash('game', 'FFFFFF', '0.3')
  triggerEvent('Change Character', 'bf', 'brooketrapped')
  setProperty('dad.alpha', 1)

  setProperty('stage3.alpha', 0)
  setProperty('stage3flag.alpha', 0)

  setProperty('stage.visible',true);
  setProperty('stage2.visible',true);
  setProperty('gradient.visible',true);
  setProperty('wires.visible',true);
  end

  if v1 == 'bg2' then
  cameraFlash('game', 'FFA500', '0.5')
  triggerEvent('Change Character', 'bf', 'brooketrapped')
  setProperty('dad.alpha', 1)
  
  setProperty('stage3.alpha', 0)
  setProperty('stage3flag.alpha', 0)

  setProperty('blend.visible',true);
  setProperty('fire1.visible',true);
  setProperty('fire2.visible',true);
  setProperty('stage.visible',true);
  setProperty('stage2.visible',true);
  setProperty('gradient.visible',true);
  setProperty('wires.visible',true);
  end

  if (v1 == 'trappedend') then
  setProperty('cameraSpeed',0.3)
 
    doTweenAlpha('fadein1', 'stage3', 1, 5, 'sineIn');
    doTweenAlpha('fadein2', 'stage3flag', 1, 5, 'sineIn');
		doTweenAlpha('fade', 'wires', 0, 5, 'sineInOut')
		doTweenAlpha('fade1', 'dad', 0, 5, 'sineInOut')
    doTweenAlpha('fade2', 'fire2', 0, 5, 'sineInOut')
    doTweenAlpha('fade3', 'blend', 0, 5, 'sineInOut')
    doTweenAlpha('fade4', 'gradient', 0, 5, 'sineInOut')
    doTweenAlpha('fade5', 'fire1', 0, 5, 'sineInOut')
  end

 if v1 == 'cambye' then
 doTweenAlpha('cambye', 'camGame', 0, 3.5, 'sineInOut')
   end
  end
end