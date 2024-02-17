function onEvent(name,value1,value2)
if name == "EpicZoom" then
   
   if value1 == '1' then    
   doTweenZoom('screenZoom', 'camHUD', 1.1, 0.03, 'linear');
   doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
   end
   if value1 == '3' then   
   doTweenZoom('screenZoom', 'camHUD', 1.1, 0.03, 'linear');
   setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.025) 
   end
   if value1 == '2' then     
   doTweenZoom('screenZoom', 'camHUD', 1.1, 0.03, 'linear');
   setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.035) 
    end
  end
end