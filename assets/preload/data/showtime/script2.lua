function onBeatHit() 
	   if (curBeat % 4 == 0) then
    doTweenZoom('screenZoom', 'camHUD', 1.05, 0.02, 'linear');
	 setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.045)
	   end
end