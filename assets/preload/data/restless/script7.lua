local savedPos = {}
local newPos = {
    -350,  --rating X coordinate
    -410,  --rating Y coordinate
    0,  --combo X coordinate
    0   --combo Y coordinate
}

function onCreate()
    savedPos = getPropertyFromClass('ClientPrefs', 'comboOffset')
    for i = 1,4 do
        setPropertyFromClass('ClientPrefs', 'comboOffset['..(i-1)..']', newPos[i])
    end
end
function onDestroy()
    for i = 1,4 do
        setPropertyFromClass('ClientPrefs', 'comboOffset['..(i-1)..']', savedPos[i])
    end
end