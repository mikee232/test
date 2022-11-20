function onCreate()
	-- background shit
	makeAnimatedLuaSprite('timmys room', 'black-forest', -640, -230);
	scaleLuaSprite('timmys room', 15.4, 15.5);
addAnimationByPrefix('timmys room', 'black-forest', 'black-forest Static', 24, true);
objectPlayAnimation('timmys room', 'black-forest');
	
	makeLuaSprite('ground', 'forest-sun', 0, -10);
	scaleLuaSprite('ground', 2.4, 2.5);
	scaleObject('ground', 1.1, 1.1);
	
   setProperty('ground.antialiasing', true);
	
	addLuaSprite('timmys room', false)
	addLuaSprite('ground', false);

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('ground.visible', true);
			setProperty('timmys room.visible', false);
		
		end
		
		if value1 == '1' then
			setProperty('timmys room.visible', true);
			setProperty('ground.visible', false);
		end
	end
end