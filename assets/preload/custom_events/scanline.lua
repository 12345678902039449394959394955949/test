function onEvent(name,value1,value2)
	if name == 'scanline' then

if value1 == '1' then
 setProperty('scanline.visible', true)
 end
if value1 == '0' then
 setProperty('scanline.visible', false)
	  end
  end
end
 