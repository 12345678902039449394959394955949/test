function onCreatePost()

if downscroll == false then
setPropertyFromClass('ClientPrefs', 'comboOffset', {600, -360, numX, numY})
getPropertyFromClass('ClientPrefs', 'comboOffset')
end

if downscroll == true then
setPropertyFromClass('ClientPrefs', 'comboOffset', {600,  180, numX, numY})
getPropertyFromClass('ClientPrefs', 'comboOffset')
 end
end