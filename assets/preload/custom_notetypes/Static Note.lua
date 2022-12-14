function onCreate()
    makeAnimatedLuaSprite('missStatic', 'exe/static/hitStatic', -75, 0)
    addAnimationByPrefix('missStatic', 'missed', 'staticANIMATION', 24, false)
    setObjectCamera('missStatic', 'hud')
    setGraphicSize('missStatic', getProperty('missStatic.width') * 4)
    setProperty('missStatic.alpha', 0.7)
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/staticNotes');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end 

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Note' then
        playSound('hitStatic1')
            addLuaSprite('missStatic', true)
			objectPlayAnimation('missStatic', 'missed', true)
	end
end