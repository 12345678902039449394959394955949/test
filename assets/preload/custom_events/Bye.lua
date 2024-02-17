function onEvent(name,value1,value2)
	if name == 'Bye' then 
 
  if value1 == 'eyes2' then
   cameraFlash('other', 'FFFFFF', '1.1')
 setProperty('defaultCamZoom', 2.15)
 setProperty('bonniee.visible', false);
 setProperty('idle.visible', false);
 setProperty('idle2.visible', true);
 triggerEvent('Change Character', 'dad', 'shadow2')
 setProperty('dad.x', -25)
 setProperty('dad.y', -80)
 triggerEvent('Change Character', 'bf', 'nothing')
 end
  if value1 == 'bye' then
  setProperty('hands.visible', false);
  setProperty('hands2.visible', false);
  setProperty('freddy.visible', false);
  setProperty('foxy.visible', false);
  setProperty('chandelier.visible', false);
  setProperty('chica.visible', false);
  setProperty('bonnie.visible', false);
  setProperty('chandelier2.visible', false);
  setProperty('hands2.visible', false);
  setProperty('freddy2.visible', false);
  setProperty('foxy2.visible', false);
  setProperty('chica2.visible', false);
  setProperty('bonnie2.visible', false);
  setProperty('gogo.visible', false);
  end
    if value1 == 'cam' then
   doTweenZoom('zoomIn', 'camGame', 3.1, 6, 'expoInOut')
  end
 end
end