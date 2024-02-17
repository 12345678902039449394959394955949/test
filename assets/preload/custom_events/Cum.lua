function onEvent(name,value1,value2)
	if name == 'Cum' then 
 
  if name == 'Cum' then
   doTweenZoom('zoomIn', 'camGame', 3.25, 3.9, 'expoInOut')
   end
  if value1 == 'fredbye' then
  doTweenZoom('zoomIn', 'camGame', 2.75, 0.2, 'expoInOut')
 doTweenAlpha('fadeout', 'freddyy', 0, 0.5, 'sineOut');
  doTweenAlpha('fadein', 'eyesFreddy', 0, 0.5, 'sineIn');
  end
  if value1 == 'bonbye' then
  doTweenAlpha('fadeout', 'bonniee', 0, 0.5, 'sineOut');
  doTweenZoom('zoomIn', 'camGame', 2.75, 0.3, 'expoInOut')
  doTweenAlpha('fadein', 'eyesBonnie', 0, 0.5, 'sineIn');
  end
 end
end