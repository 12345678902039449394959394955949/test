function onEvent(name,value1,value2)
 
 if name == 'bgs' then
 doTweenAlpha('fadeout', 'trees', 0, 1, 'sineOut');
 end
 if value1 == 'no' then
 doTweenAlpha('fadein1', 'trees', 1, 1.2, 'sineIn');
 

  end
end