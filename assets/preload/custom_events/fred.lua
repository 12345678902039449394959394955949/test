function onCreate()
makeAnimatedLuaSprite('fred', 'stage/bite/freddyjump', 0, 100)
	addAnimationByPrefix('fred','scare','FredJUMPSCARE0')
	addLuaSprite('fred',false)
	setObjectCamera("fred", 'hud')
	setGraphicSize("fred", screenWidth, screenHeight, true)
	setProperty('fred.visible',false);
end

function onEvent(n, v1, v2)
if n == 'fred' then 

  if v1 == '1' then
  objectPlayAnimation('fred', 'scare', true)
  setProperty('fred.visible',true);
  setProperty('dad.visible',false)
			setProperty('camGame.visible',false)	
			setProperty('boyfriend.visible',false)
			setProperty('bg.visible',false)
			setProperty('fg.visible',false)
  end

  if v1 == '0' then
  setProperty('fred.visible',false);
  setProperty('dad.visible',true)
			setProperty('camGame.visible',true)	
			setProperty('boyfriend.visible',true)
			setProperty('bg.visible',true)
			setProperty('fg.visible',true)
   end
  end
end