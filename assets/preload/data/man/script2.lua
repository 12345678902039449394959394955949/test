function onCreatePost()

makeLuaSprite('pizza1', 'pizza', 863, 560);
addLuaSprite('pizza1', false)
setObjectCamera('pizza1', 'HUD')
scaleObject('pizza1', 1, 1)
setScrollFactor('pizza1', 1, 1)

makeLuaSprite('pizza2', 'pizza', 260, 560);
addLuaSprite('pizza2', false)
setObjectCamera('pizza2', 'HUD')
scaleObject('pizza2', 1, 1)
setScrollFactor('pizza2', 1, 1)

makeLuaSprite('health', 'health', 335, 627);
addLuaSprite('health', false);
setObjectCamera('health', 'HUD')
scaleObject('health', 1.1, 1)
setScrollFactor('health', 1, 1)

scaleObject('healthBar', 1, 1.8)



--Stars

makeAnimatedLuaSprite('star1', 'star', 410, 610)
addLuaSprite('star1', true)
addAnimationByPrefix('star1', 'star', 'star', 34, true)
addAnimationByPrefix('star1', 'u suck', 'star0032', 0, true)
setObjectCamera('star1', 'HUD')
scaleObject('star1', 0.98, 0.98)
setScrollFactor('star1', 1, 1)
setProperty('star1.visible', true)

makeAnimatedLuaSprite('star2', 'star', 490, 610)
addLuaSprite('star2', true)
addAnimationByPrefix('star2', 'star', 'star', 34, true)
addAnimationByPrefix('star2', 'u suck', 'star0032', 0, true)
setObjectCamera('star2', 'HUD')
scaleObject('star2', 0.98, 0.98)
setScrollFactor('star2', 1, 1)
setProperty('star2.visible', true)

makeAnimatedLuaSprite('star3', 'star', 570, 610)
addLuaSprite('star3', true)
addAnimationByPrefix('star3', 'star', 'star', 34, true)
addAnimationByPrefix('star3', 'u suck', 'star0032', 0, true)
setObjectCamera('star3', 'HUD')
scaleObject('star3', 0.98, 0.98)
setScrollFactor('star3', 1, 1)
setProperty('star3.visible', true)

makeAnimatedLuaSprite('star4', 'star', 650, 610)
addLuaSprite('star4', true)
addAnimationByPrefix('star4', 'star', 'star', 34, true)
addAnimationByPrefix('star4', 'u suck', 'star0032', 0, true)
setObjectCamera('star4', 'HUD')
scaleObject('star4', 0.98, 0.98)
setScrollFactor('star4', 1, 1)
setProperty('star4.visible', true)

makeAnimatedLuaSprite('star5', 'star', 732, 611)
addLuaSprite('star5', true)
addAnimationByPrefix('star5', 'star', 'star', 34, true)
addAnimationByPrefix('star5', 'u suck', 'star0032', 0, true)
setObjectCamera('star5', 'HUD')
scaleObject('star5', 0.98, 0.98)
setScrollFactor('star5', 1, 1)
setProperty('star5.visible', true)

--other


makeLuaSprite('time', 'time/man', 424, -16);
addLuaSprite('time', false)
setObjectCamera('time', 'HUD')
scaleObject('time', 1, 1)
setScrollFactor('time', 1, 1)
setProperty('time.alpha', 0)
setProperty('time.visible', true)

makeLuaText('Score', 'Score:', 89, 680, 760)
	addLuaText('Score')
	setTextColor('Score', 'FFFFFF')
  setTextAlignment('Score,', 'left')
	setTextFont('Score', 'cryptoftomorrow.ttf')
  scaleObject('Score', 1.4, 1.2)

 setTextSize('Score', 19)
end

function onSongStart()
    fixTimeBar()
    doTweenAlpha('bar', 'time', 1,0.3, 'linear')
end


function fixTimeBar()    
    local dadColR = getProperty('dad.healthColorArray[0]')
    local dadColG = getProperty('dad.healthColorArray[1]')
    local dadColB = getProperty('dad.healthColorArray[2]')

    local dadColFinal = string.format('%02x%02x%02x', dadColR, dadColG, dadColB)

    setProperty('timeBar.color', getColorFromHex(dadColFinal))
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

setObjectOrder('healthBar',4)
    setObjectOrder('health',5)
    setObjectOrder('bar',0)


if not downscroll then
setProperty('iconP1.x', 871)
setProperty('iconP1.y', 559)
setProperty('iconP2.x', 267)
setProperty('iconP2.y', 553)
setProperty('Score.y', 80)
setProperty('Score.x', 570)
end
if downscroll then
setProperty('Score.y', 590)
setProperty('Score.x', 570)
setProperty('iconP1.x', 861)
setProperty('iconP1.y', 5)
setProperty('iconP2.x', 260)
setProperty('iconP2.y', 3)
setProperty('time.y', 640)
setProperty('health.y', 78)
setProperty('healthBar.y', 84)
setProperty('star1.y', 70)
setProperty('star2.y', 70)
setProperty('star3.y', 70)
setProperty('star4.y', 70)
setProperty('star5.y', 70)
setProperty('pizza1.y', 15)
setProperty('pizza2.y', 15)
end
if middlescroll then
setProperty('Score.y', 70)
setProperty('Score.x', 90)
end
if middlescroll and not downscroll then
setProperty('Score.y', 600)
setProperty('Score.x', 90)
  end
end