function onCreate() 
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
end

function onEvent(name,value1,value2)
	if name == 'HudPurpleFade' then 
   
   if value1 == '1' then
setProperty('star1.visible', true)
setProperty('star2.visible', true)
setProperty('star3.visible', true)
setProperty('star4.visible', true)
setProperty('star5.visible', true)
setProperty('timeBar.visible', true)
setProperty('timeBarBG.visible', true)
setProperty('time.visible', true)
setProperty('Score.alpha', 1)
setProperty('health.alpha', 1)
setProperty('healthBar.alpha', 1)
setProperty('pizza1.alpha', 1)
setProperty('pizza2.alpha', 1)
setProperty('iconP1.alpha', 1)
setProperty('iconP2.alpha', 1)
  end
 end
end
