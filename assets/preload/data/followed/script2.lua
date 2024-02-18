function onCreate()
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'no')
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'no')
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'no')
end

function onGameOverStart()
         playSound("no", 1)
         startVideo('FollowedGameover')
         setProperty("boyfriend.visible", false)
end