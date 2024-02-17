function onCreate()
setProperty('camFollow.x', getMidpointX('boyfriend'))
setProperty('camFollow.y', getMidpointY('boyfriend'))

makeAnimatedLuaSprite('fnaf4', 'bgs/restless/fnaf4', -230, -23)
addLuaSprite('fnaf4', false)
addAnimationByPrefix('fnaf4', 'i', 'i', 8, true)
scaleObject('fnaf4', 1.6, 1.6)

makeAnimatedLuaSprite('livingroom', 'bgs/restless/livingroom', -210, -43)
addLuaSprite('livingroom', false)
addAnimationByPrefix('livingroom', 'i', 'i', 8, true)
scaleObject('livingroom', 1.6, 1.6)

makeAnimatedLuaSprite('bedroom', 'bgs/restless/bedroom', -195, -43)
luaSpriteAddAnimationByPrefix('bedroom', 'i', 'i', 8, true)
addLuaSprite('bedroom', false)
scaleObject('bedroom', 1.6, 1.6)

--hide

setProperty('fnaf4.alpha', 0)
setProperty('fnaf4.visible',true);

setProperty('livingroom.alpha', 0)
setProperty('livingroom.visible',true);

setProperty('bedroom.alpha', 0)
setProperty('bedroom.visible', true);
end

function onEvent(name,value1,value2)
	if name == 'camera' then 
   
  if value1 == 'camera2' then
   doTweenZoom('zoomIn', 'camGame', 0.8, 1.2, 'sineOut')
     end
   end
 end

function onEvent(name,value1,value2)
	if name == 'BGrestless' then 

   if value1 == 'bed1' then
		 doTweenAlpha('fadein', 'bedroom', 1, 1.3, 'sineIn');
   end
   if value1 == 'bed0' then
		 doTweenAlpha('fadeout', 'bedroom', 0, 1.3, 'sineOut');
   end
   if value1 == 'living1' then
		 doTweenAlpha('fadein', 'livingroom', 1, 1.3, 'sineIn');
   end
   if value1 == 'living0' then
		 doTweenAlpha('fadeout', 'livingroom', 0, 1.3, 'sineOut');
   end
   if value1 == 'fnafIn' then
		 doTweenAlpha('fadein', 'fnaf4', 1, 1.3, 'sineIn');
   end
   if value1 == 'fnafOut' then
		 doTweenAlpha('fadeout', 'fnaf4', 0, 1.3, 'sineOut')
	  	 end
   end
 end
