function onUpdate()
    if ratingName == 'Perfect!!' or ratingName == '?' then

	setProperty('ratingsData[0].image', 'FollowUI/sick100')
else
	setProperty('ratingsData[0].image', 'FollowUI/sick')
	setProperty('ratingsData[1].image', 'FollowUI/good')
	setProperty('ratingsData[2].image', 'FollowUI/bad')
	setProperty('ratingsData[3].image', 'FollowUI/shit')
 end
end