function onCreatePost()
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
 end

function onUpdatePost()

if downscroll then
setProperty('star1.y', 70)
setProperty('star2.y', 70)
setProperty('star3.y', 70)
setProperty('star4.y', 70)
setProperty('star5.y', 70)
  end
end

