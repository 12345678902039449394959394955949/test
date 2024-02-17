function onEvent(name, value1, value2)
if name == "TwenZoom" then
   
   if value1 == '1' then    
   doTweenZoom('screenZoom', 'camHUD', 1.05, 0.03, 'linear');
   setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.025) 
   end

   if value1 == '2' then     
   doTweenZoom('screenZoom1', 'camHUD', 1.1, 0.10, 'sineInOut');
   doTweenZoom('screenZoom2', 'camGame', 2.15, 0.10, 'sineInOut');
   end

   if value1 == '3' then     
   setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.025)
	 setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.025)
   end

      if value1 == '4' then     
   doTweenZoom('screenZoom', 'camHUD', 1.15, 0.75, 'cubeOut');
    doTweenZoom('screenZoom1', 'camGame', 3.45, 0.75, 'cubeOut');
   end

    if value1 == '5' then     
   setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.025)
	 setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.075)
   end

    if value1 == '6' then     
   setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.055)
	 setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.065)
    end
  end
end