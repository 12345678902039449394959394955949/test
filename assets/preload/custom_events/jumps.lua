function onEvent(name, value1, value2)
if name == 'jumps' then
if value1 == 'on' then
    makeLuaSprite("black", '', -600, -500)
    makeGraphic("black", 0, 0, '000000')
    scaleObject('black', 3, 3)
	setObjectCamera("fred", 'other')
	setProperty('black.visible',true)
    addLuaSprite("black", false)
    
    makeAnimatedLuaSprite('fred', 'stage/bite/freddyjump', 0, 100)
	addAnimationByPrefix('fred','scare','FredJUMPSCARE0')
	addLuaSprite('fred',true)
	setObjectCamera("fred", 'other')
	setGraphicSize("fred", screenWidth, screenHeight, true)
	setProperty('fred.visible',true)
end
if value1 == 'off' then
	setProperty('fred.visible',false)
	setProperty('black.visible',false)
end
end
end