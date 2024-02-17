function onUpdate()
if ratingName == 'Perfect!!' or ratingName == '?' then
	setProperty('ratingsData[0].image', 'sick100')
else
setProperty('ratingsData[0].image', 'sick')
    end

end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if curBeat % 1 == 0 then


        cancelTween("ScoreX")
        cancelTween("ScoreY")
       scaleObject('Score', 1.6, 1.4)
        doTweenX("ScoreX", "Score.scale", 1.4, 0.3, "sineOut")
        doTweenY("ScoreY", "Score.scale", 1.2, 0.2, "sineOut")
    end

end
