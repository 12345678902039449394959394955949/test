allowCountdown = false
function onCreatePost()
	setProperty('boyfriend.x', getProperty('gf.x')+40)
	setProperty('boyfriend.y', getProperty('gf.y')-80)

	
	for i=0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums', i, 'visible', false)
 end
	
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)
end

function onStartCountdown()
	if not allowCountdown then
		characterPlayAnim('bf', 'intro', true)
		runTimer('transform', 1.2)
		return Function_Stop
	end
	return Function_Continue
end

function onTimerCompleted(t, timer, loops)
	if t == 'transform' then

		playSound('crushed')

		runTimer('start', 0.5)
	end
	
	if t == 'start' then
		characterPlayAnim('bf', 'idle-alt', true)
		allowCountdown = true
		setProperty('pizza1.alpha', 1)
    setProperty('iconP1.alpha', 1)
		startCountdown()
		for i=0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums', i, 'visible', false)
			if not getPropertyFromClass('ClientPrefs', 'middleScroll') then
				setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('playerStrums', i, 'x') - 325)
			end
		end
		close(true)
	end
end