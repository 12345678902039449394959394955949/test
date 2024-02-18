function onCreatePost()

if downscroll == false then
setPropertyFromClass('ClientPrefs', 'comboOffset', {360, -380, numX, numY})
getPropertyFromClass('ClientPrefs', 'comboOffset')
end

if downscroll == true then
setPropertyFromClass('ClientPrefs', 'comboOffset', {360,  180, numX, numY})
getPropertyFromClass('ClientPrefs', 'comboOffset')
 end
end