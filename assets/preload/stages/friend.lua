function onCreate()
makeLuaSprite('bg', 'stage/friend/bg', -270, -320)
addLuaSprite('bg', false)
scaleObject('bg', 1.3, 1.3)
end

function onBeatHit()

	if curBeat % 4 == 0 then
		triggerEvent("Add Camera Zoom",0.085,0.085)
    triggerEvent("Add Camera Zoom",0.025,0.025)
	end

end