function onStepHit()
	if curStep == 3 then
noteTweenX('play0', 4, 415, 1, 'quartInOut')
	noteTweenX('play1', 5, 525, 1, 'quartInOut')
	noteTweenX('play2', 6, 635, 1, 'quartInOut')
	noteTweenX('play3', 7, 745, 1, 'quartInOut')
	noteTweenAngle('playrotate0', 4, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate1', 5, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate2', 6, 360, 1, 'quartInOut')
	noteTweenAngle('playrotate3', 7, 360, 1, 'quartInOut')
end
	if curStep == 2046 then
doTweenAlpha('dad', 'dad', 0, 1.2, 'linear')
end
	if curStep == 2076 then
doTweenAlpha('dad', 'dad', 1, 0.1, 'linear')
end
end