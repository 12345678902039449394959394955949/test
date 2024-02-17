function onEvent(name,value1,value2)
if name == "camera" then
   
   if value1 == '1' then    
   triggerEvent('Camera Follow Pos', '380', '160')
   doTweenZoom('screenZoom', 'camGame', 4, 0.90, 'cubeIn');
   end
   if value1 == '2' then    
   setProperty('defaultCamZoom', 3.65)
   end
   if value1 == '0' then    
   triggerEvent('Camera Follow Pos', '', '')
   setProperty('defaultCamZoom', 3)
    end
  end
end