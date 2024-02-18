function onCreate()
makeAnimatedLuaSprite('scan', 'stage/gofish/scan', -25, -20)
addLuaSprite('scan', false)
addAnimationByPrefix('scan', 'Symbol 1', 'Symbol 1', 34, true)
setObjectCamera('scan', 'camOther')
scaleObject('scan', 1.05, 1.05)
setScrollFactor('scan', 1, 1)
end