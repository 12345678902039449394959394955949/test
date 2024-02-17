function onCreate()

makeLuaSprite('scanline', 'bgs/watchful/retro/scanline', 301, 210)
addLuaSprite('scanline', true)
scaleObject('scanline', 0.2, 0.2)
setObjectCamera('scanline', 'camOther')

makeLuaSprite('light', 'bgs/watchful/light', 0, 0)
addLuaSprite('light', false)

makeLuaSprite('bed', 'bgs/watchful/bed', 0, 0)
addLuaSprite('bed', false)

makeLuaSprite('clock', 'bgs/watchful/clock', 0, 0)
addLuaSprite('clock', false)

makeLuaSprite('couch', 'bgs/watchful/couch', 0, 0)
addLuaSprite('couch', false)

makeLuaSprite('office', 'bgs/watchful/office', 0, 0)
addLuaSprite('office', false)

--hide
setProperty('scanline.visible',false);

setProperty('light.visible',true);
setProperty('bed.visible',false);
setProperty('clock.visible',false);
setProperty('couch.visible',false);
setProperty('office.visible',false);
end

function onEvent(name, value1, value2)
if name == 'BGwatch' then

if value1 == 'bed' then
cameraFlash('other', 'FFFFFF', '0.2')
doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
setProperty('scanline.visible',false);
doTweenZoom('zoomIn', 'camGame', 2, 0.1, 'sineOut')
setProperty('light.visible',false);
setProperty('bed.visible',true);
setProperty('clock.visible',false);
setProperty('couch.visible',false);
setProperty('office.visible',false);
end
if value1 == 'light' then
cameraFlash('other', 'FFFFFF', '0.2')
doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
setProperty('light.visible',true);
setProperty('bed.visible',false);
setProperty('clock.visible',false);
setProperty('couch.visible',false);
setProperty('office.visible',false);
end
if value1 == 'clock' then
cameraFlash('other', 'FFFFFF', '0.2')
doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
setProperty('light.visible',false);
setProperty('bed.visible',false);
setProperty('clock.visible',true);
setProperty('couch.visible',false);
setProperty('office.visible',false);
end
if value1 == 'couch' then
cameraFlash('other', 'FFFFFF', '0.2')
doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
setProperty('light.visible',false);
setProperty('bed.visible',false);
setProperty('clock.visible',false);
setProperty('couch.visible',true);
setProperty('office.visible',false);
end
if value1 == 'office' then
cameraFlash('other', 'FFFFFF', '0.2')
doTweenZoom('zoomIn', 'camGame', 2.15, 0.01, 'expoInOut')
setProperty('light.visible',false);
setProperty('bed.visible',false);
setProperty('clock.visible',false);
setProperty('couch.visible',false);
setProperty('office.visible',true);
end
if value1 == 'nothing' then
setProperty('light.visible',false);
setProperty('bed.visible',false);
setProperty('clock.visible',false);
setProperty('couch.visible',false);
setProperty('office.visible',false);
end
 if value1 == 'end' then
doTweenZoom('zoomOut', 'camGame', 0.1, 10, 'quartOut')
doTweenAlpha('fadeout', 'camGame', 0, 2.35, 'sineOut');
  end
 end
end