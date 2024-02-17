dir = 'Youtube/'
function onCreatePost()
	makeLuaSprite('bd', dir..'bddown', 0, 400)
	scaleObject("bd", 1, 0.5)
	setObjectCamera('bd','hud')
	addLuaSprite('bd', false)

	setObjectCamera("timeBar", 'other')
  setTimeBarColors('FF0000', '')
  setProperty('timeBar.y',675)
  setProperty('timeBar.x',0)
  setProperty('timeBarBG.visible', false)
  scaleObject("timeBar", 3.3, 0.7)

  makeLuaSprite('gris','', 0,675)
  setObjectCamera("gris", 'other')
	makeGraphic('gris', 784, 162,'808080')
	addLuaSprite('gris')
  scaleObject("gris", 1.7, 0.05)
	setObjectCamera("gris", 'other')

  setProperty('timeTxt.x', 1500)

	makeLuaText("youtubeTime", "0:00 / 4:25", 0,140,getProperty('timeBar.y') + 10)
	setObjectCamera("youtubeTime", 'other')
	setTextFont("youtubeTime", "Roboto-Regular.ttf")
	setTextBorder("youtubeTime", 0, "0x")
	addLuaText("youtubeTime")

	makeLuaText("youtubeScore", "Score: ", 0,1100,getProperty('timeBar.y') + 10)
	setObjectCamera("youtubeScore", 'other')
	setTextFont("youtubeScore", "Roboto-Regular.ttf")
	setTextBorder("youtubeScore", 0, "0x")
	addLuaText("youtubeScore")

	makeLuaSprite("youtubebuttons", dir..'play', 15, getProperty('timeBar.y') + 12)
	setObjectCamera("youtubebuttons", 'other')
	addLuaSprite("youtubebuttons")

	addHaxeLibrary("FlxStringUtil", 'flixel.util')
	addHaxeLibrary("Math")

makeLuaText("power", "Power left:", 0, 25, screenHeight - 100)
	setTextSize("power", 22)
	setTextFont("power", "bite.ttf")
	setObjectCamera("power", 'hud')
	setTextBorder("power", 0, "0x")
	setProperty('power.alpha',0)
	addLuaText("power")

	makeLuaText("powerHP", "100", 0, getProperty("power.x") + getProperty("power.width") + 5,screenHeight - 100 - 22)
	setTextSize("powerHP", 36)
	setObjectCamera("powerHP", 'hud')
	setTextFont("powerHP", "bite.ttf")
	setTextBorder("powerHP", 0, "0x")
	setProperty('powerHP.alpha',0)
	addLuaText("powerHP")

	makeLuaText("powerpercent", "%", 0, getProperty("powerHP.x") + getProperty("powerHP.width"), screenHeight - 100)
	setTextSize("powerpercent", 22)
	setObjectCamera("powerpercent", 'hud')
	setTextFont("powerpercent", "bite.ttf")
	setTextBorder("powerpercent", 0, "0x")
	setProperty('powerpercent.alpha',0)
	addLuaText("powerpercent")
	math.randomseed(os.time())

	
	for i = 1,5 do
		makeLuaSprite("stars"..i, dir..'stars', 910 + (i*30), getProperty('timeBar.y') + 12)
		setObjectCamera("stars"..i, 'other')
		addLuaSprite("stars"..i, true)
	end

function onCreatePost()
	makeLuaSprite("loadingblack")
	makeGraphic("loadingblack", screenWidth, screenHeight, '000000')
	setObjectCamera('loadingblack','other')
	addLuaSprite("loadingblack", true)

	makeAnimatedLuaSprite("loadcircle", dir..'load')
	addAnimationByPrefix("loadcircle", "i", "load", 12, true)
	playAnim("loadcircle", "i")
	scaleObject('loadcircle',0.5,0.5,true)
	screenCenter("loadcircle")
	setObjectCamera('loadcircle','other')
	addLuaSprite("loadcircle", true)
	setProperty('introSoundsSuffix','asdasd')
	
end

function onDestroy()
	runHaxeCode([[
		FlxG.mouse.visible = false;
		FlxG.mouse.useSystemCursor = false;
	]])
end

function onSongStart()
	removeLuaSprite("loadingblack", true)
	removeLuaSprite("loadcircle", true)
	startingnow = true
end

function onUpdate(elapsed)
	if getPropertyFromClass("Conductor", "songPosition") < 11000 and keyJustPressed('space') then
		onTimerCompleted('endintrofinally')
		runHaxeCode([[
			game.setSongTime(11000);
            game.clearNotesBefore(Conductor.songPosition);
		]])
	end

	--debugPrint(getProperty("cams.offset.x"))
	if startingnow then
		runHaxeCode([[
		var seconds = Math.floor(Conductor.songPosition / 1000);
		var length = Math.floor(FlxG.sound.music.length / 1000);
        game.getLuaObject("youtubeTime",true).text = FlxStringUtil.formatTime(seconds, false) + ' / ' + FlxStringUtil.formatTime(length, false);
        return;
		]])	
	end
	setTextString("youtubeScore", 'score: '..getProperty("songScore")..'' )
	end



	if mouseOverlap('pause','other') and mouseClicked() then
		runHaxeCode([[
			game.openPauseMenu();
		]])
	elseif mouseOverlap('skip','other') and mouseClicked() then
		if getPropertyFromClass("Conductor", "songPosition") < 11000 then
			onTimerCompleted('endintrofinally')
			runHaxeCode([[
				game.setSongTime(11000);
				game.clearNotesBefore(Conductor.songPosition);
			]])
		else
			
			runHaxeCode([[
         	   game.setSongTime(Conductor.songPosition + 10000);
        	    game.clearNotesBefore(Conductor.songPosition);
			]])
		end
	end
end
function goodNoteHit(r, r2, r3, sus)
	if not sus then
		checkStars()
	end
end

function noteMissPress()
	checkStars()
end
function checkStars() 
	if rating * 100 > 80 then
		for i = 1,5 do
			setProperty('stars'..i..'.visible',true)
		end
	elseif rating * 100 > 70 then
		for i = 1,5 do
			setProperty('stars'..i..'.visible',true)
		end
		setProperty('stars5.visible',false)
	elseif rating * 100 > 65 then
		for i = 1,5 do
			setProperty('stars'..i..'.visible',true)
		end
		setProperty('stars4.visible',false)
		setProperty('stars5.visible',false)
	elseif rating * 100 > 60 then
		for i = 1,5 do
			setProperty('stars'..i..'.visible',false)
		end
		setProperty('stars1.visible',true)
		setProperty('stars2.visible',true)
	elseif rating * 100 > 50 then
		for i = 1,5 do
			setProperty('stars'..i..'.visible',false)
		end
		setProperty('stars1.visible',true)
	end
end