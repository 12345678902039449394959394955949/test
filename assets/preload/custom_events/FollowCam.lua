function onEvent(name,value1,value2)
if name == "FollowCam" then
   
      if value1 == '1' then     
   doTweenZoom('screenZoom', 'camGame', 2.05, 0.95, 'cubeOut');
    end
  end
end