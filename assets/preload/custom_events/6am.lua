function onEvent(name, value1, value2)
if name == '6am' then
if value1 == 'on' then
	makeLuaSprite("blacksixam")
	makeGraphic("blacksixam", 3000, 2500, '000000')
	addLuaSprite('blacksixam',true)
	setProperty("blacksixam.alpha", 0)
	setScrollFactor("blacksixam", 0.0, 0.0)
	screenCenter("blacksixam", 'xy')

	makeLuaText("five", "5")
	setTextSize("five", 62)
	setObjectCamera("five", 'other')
	setTextFont("five", "bite.ttf")
	setTextBorder("five", 0, "0x")
	addLuaText("five",true)
	screenCenter("five", 'xy')
	setProperty('five.x', getProperty('five.x') - getProperty('five.width')/2)
	setScrollFactor("five", 0.0, 0.0)

	makeLuaText("six", "6")
	setTextSize("six", 62)
	setObjectCamera("six", 'other')
	setTextFont("six", "bite.ttf")
	setTextBorder("six", 0, "0x")
	addLuaText("six",true)
	screenCenter("six", 'xy')
	setProperty('six.x', getProperty('six.x') - getProperty('six.width')/2)
	setProperty('six.y', getProperty('six.y') + 70)
	setScrollFactor("six", 0.0, 0.0)

	makeLuaText("sixam", "AM")
	setTextSize("sixam", 62)
	setObjectCamera("sixam", 'other')
	setTextFont("sixam", "bite.ttf")
	setTextBorder("sixam", 0, "0x")
	addLuaText("sixam",true)
	screenCenter("sixam", 'xy')
	setProperty('sixam.x', getProperty('sixam.x') + getProperty('sixam.width')/2)
	setScrollFactor("sixam", 0.0, 0.0)

	makeLuaSprite("topsix",'',getProperty('six.x'),getProperty('six.y') - 165)
	makeGraphic("topsix", getProperty('six.width'), getProperty('six.height'), '000000')
	addLuaSprite('topsix',true)
	setObjectCamera("topsix", 'other')
	setScrollFactor("topsix", 0.0, 0.0)

	makeLuaSprite("bottomsix",'',getProperty('six.x'),getProperty('six.y')+30)
	makeGraphic("bottomsix", getProperty('six.width'), getProperty('six.height') -20, '000000')
	addLuaSprite('bottomsix',true)
	setObjectCamera("bottomsix", 'other')
	setScrollFactor("bottomsix", 0.0, 0.0)

	doTweenAlpha('youwin','blacksixam',1,1.5)
	doTweenAlpha('youwin2','five',1,1.5)
	doTweenAlpha('youwin3','sixam',1,1.5)
	doTweenAlpha('youwin4','camHUD',0,1.5)

	setProperty('five.alpha',0)
	setProperty('six.alpha',0)
	setProperty('sixam.alpha',0)
	setProperty('topsix.alpha',0)
	setProperty('bottomsix.alpha',0)

end


function onTweenCompleted(r)

	if r == 'youwin' then
		setProperty('six.alpha',1)
		setProperty('topsix.alpha',1)
		setProperty('bottomsix.alpha',1)
		doTweenY("up6", "six", getProperty('five.y'), 4)
		doTweenY("up5", "five", getProperty('five.y') - 70, 4)
	end

end
end
end