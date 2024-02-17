function onCreate()
setProperty('skipCountdown', false)
setProperty('camHUD.alpha', 1)

makeLuaSprite('bg', 'bgs/trapped-png/fnaf3', 0, 0)
addLuaSprite('bg', false)
scaleObject('bg', 3, 3)
end
