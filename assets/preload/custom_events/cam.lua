function onEvent(name, value1, value2)
if name == 'cam' then
if value1 == 'on' then
	makeAnimatedLuaSprite('cams', 'stage/bite/DJcamera',-300,-400)
	addAnimationByPrefix('cams','flip','CamFLIP0',24,false)
	scaleObject("cams", 1.35, 1.35)
	updateHitbox("cams")
	addLuaSprite('cams',true)
	setProperty('cams.visible',true)

	makeLuaSprite('fx', 'stage/overlay', 0, 0)
	addLuaSprite('fx')
	setProperty('fx.alpha',0)
	setObjectCamera('fx','camHUD')
	setGraphicSize("fx", 1280, 720, true)
end
if value1 == '2' then
	makeAnimatedLuaSprite('cams', 'stage/bite/DJcamera',-280,-400)
	addAnimationByPrefix('cams','loop','CamLOOP0',24,true)
	scaleObject("cams", 1.35, 1.3)
	updateHitbox("cams")
	addLuaSprite('cams',true)
	setProperty('cams.visible',true)
end
if value1 == 'off' then
	setProperty('cams.visible',false)
end
end
end