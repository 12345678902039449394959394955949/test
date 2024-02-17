function onCreate() 
makeLuaSprite('scanline', 'bgs/watchful/retro/scanline', 0, 0)
addLuaSprite('scanline', true)
scaleObject('scanline', 1.5, 1.5)
setObjectCamera('scanline', 'camOther')
setScrollFactor('scanline', 1, 1)
setProperty('scanline.visible',false);

makeLuaSprite('retrolight', 'bgs/watchful/retro/retrolight', 301, 210)
addLuaSprite('retrolight', false)
scaleObject('retrolight', 1, 1)
setScrollFactor('retrolight', 1, 1)
setProperty('retrolight.visible',false);

makeLuaSprite('retrobed', 'bgs/watchful/retro/retrobed', 301, 210)
addLuaSprite('retrobed', false)
scaleObject('retrobed', 1, 1)
setScrollFactor('retrobed', 1, 1)
setProperty('retrobed.visible',false);

makeLuaSprite('retrocouch', 'bgs/watchful/retro/retrocouch', 301, 210)
addLuaSprite('retrocouch', false)
scaleObject('retrocouch', 1, 1)
setScrollFactor('retrocouch', 1, 1)
setProperty('retrocouch.visible',false);

makeLuaSprite('retroclock', 'bgs/watchful/retro/retroclock', 301, 210)
addLuaSprite('retroclock', false)
scaleObject('retroclock', 1, 1)
setScrollFactor('retroclock', 1, 1)
setProperty('retroclock.visible',false);
end

function onEvent(name, value1, value2)
if name == 'PixelBG' then

if value1 == 'bedretro' then
setProperty('defaultCamZoom', 15)
triggerEvent('Change Character', 'dad', 'retrofredplush')
 triggerEvent('Change Character', 'bf', 'retrobf')
setProperty('scanline.visible',true);

setProperty('retrolight.visible',false);
setProperty('retrobed.visible',true);
setProperty('retroclock.visible',false);
setProperty('retrocouch.visible',false);
setProperty('retrooffice.visible',false);
setProperty('office.visible',false);
end
if value1 == 'lightretro' then
cameraFlash('game', 'FFFFFF', '0.3')
setProperty('scanline.visible',true);

setProperty('retrolight.visible',true);
setProperty('retrobed.visible',false);
setProperty('retroclock.visible',false);
setProperty('retrocouch.visible',false);
setProperty('retrooffice.visible',false);
end
if value1 == 'clockretro' then
cameraFlash('game', 'FFFFFF', '0.3')
setProperty('scanline.visible',true);

setProperty('retrolight.visible',false);
setProperty('retrobed.visible',false);
setProperty('retroclock.visible',true);
setProperty('retrocouch.visible',false);
setProperty('retrooffice.visible',false);
end
if value1 == 'couchretro' then
cameraFlash('game', 'FFFFFF', '0.3')
setProperty('scanline.visible',true);

setProperty('retrolight.visible',false);
setProperty('retrobed.visible',false);
setProperty('retroclock.visible',false);
setProperty('retrocouch.visible',true);
setProperty('retrooffice.visible',false);
end
if value1 == 'officeretro' then
cameraFlash('game', 'FFFFFF', '0.3')
setProperty('scanline.visible',true);

setProperty('retrolight.visible',false);
setProperty('retrobed.visible',false);
setProperty('retroclock.visible',false);
setProperty('retrocouch.visible',false);
setProperty('retrooffice.visible',true);
end
if value1 == 'nothing' then
cancelTween('zoomIn')
setProperty('scanline.visible',false);
setProperty('retrolight.visible',false);
setProperty('retrobed.visible',false);
setProperty('retroclock.visible',false);
setProperty('retrocouch.visible',false);
setProperty('retrooffice.visible',false);
  end
 end
end