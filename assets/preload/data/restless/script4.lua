function onCreatePost()
setProperty('healthBar.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('iconP1.alpha', 0)


makeLuaSprite('pizza1', 'pizza', 563, 30);
addLuaSprite('pizza1', false)
setObjectCamera('pizza1', 'HUD')
scaleObject('pizza1', 1, 1)
setScrollFactor('pizza1', 1, 1)
setProperty('pizza1.alpha', 0)

makeLuaSprite('time', 'time/restless', 424, -16);
addLuaSprite('time', false)
setObjectCamera('time', 'HUD')
scaleObject('time', 1, 1)
setScrollFactor('time', 1, 1)
setProperty('time.alpha', 0)
setProperty('time.visible', true)
end

function onSongStart()

    doTweenAlpha('bar', 'time', 1,0.3, 'linear')

end


function onUpdate() 

setProperty('healthBar.x', 340)
setProperty('healthBar.y', 630)
setProperty('scoreTxt.visible', false)
setProperty('timeTxt.visible', false)
setTextString('Score', 'Score:          ' .. getProperty('songScore'))
end

function onUpdatePost()
setObjectOrder('pizza1',2)
    setObjectOrder('pizza2',3)

 
if not downscroll then
setProperty('iconP1.x', 571)
setProperty('iconP1.y', 580)
setProperty('pizza1.y', 586)
end
if downscroll then
setProperty('Score.y', 590)
setProperty('Score.x', 570)
setProperty('iconP1.x', 571)
setProperty('iconP1.y', 10)
setProperty('iconP2.x', 560)
setProperty('iconP2.y', 3)
setProperty('time.y', 640)
setProperty('health.y', 84)
setProperty('healthBar.y', 84)
setProperty('star1.y', 70)
setProperty('star2.y', 70)
setProperty('star3.y', 70)
setProperty('star4.y', 70)
setProperty('star5.y', 70)
setProperty('pizza1.y', 656)

  end
end