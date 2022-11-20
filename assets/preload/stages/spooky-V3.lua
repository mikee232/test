function onCreate()

	makeLuaSprite('halloween2_bg_low','spookyV.3/halloween2_bg_low', -200, -100);
	addLuaSprite('halloween2_bg_low', false);
	
	makeAnimatedLuaSprite('halloween2_bg', 'spookyV.3/halloween2_bg',-200, -100);
	addLuaSprite('halloween2_bg', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('halloween2_bg', 'idle', 'halloweem bg lightning strike', 6, false);
	
	setProperty('halloween2_bg.visible', false);

	runTimer('thunder1',8)
end

function onTimerCompleted(t,l,ll)
	if t == 'thunder1' then
            setProperty('halloween2_bg_low.visible', false);
			setProperty('halloween2_bg.visible', true);
            objectPlayAnimation('halloween2_bg', 'idle', false);
	 triggerEvent('Play Animation','scared','gf')
	 	 triggerEvent('Play Animation','scared','bf')
			playSound('thunder2_1', 1);
	        runTimer('thunder1off',4)
	end
	if t == 'thunder1off' then
		 triggerEvent('Play Animation','danceRight','gf')
		 triggerEvent('Play Animation','idle','bf')
            setProperty('halloween2_bg_low.visible', true);
			setProperty('halloween2_bg.visible', false);

	        runTimer('thunder2',8)
	end
	if t == 'thunder2' then
            setProperty('halloween2_bg_low.visible', false);
			setProperty('halloween2_bg.visible', true);
            objectPlayAnimation('halloween2_bg', 'idle', false);
		 triggerEvent('Play Animation','scared','gf')
			 triggerEvent('Play Animation','scared','bf')
			playSound('thunder2_2', 1);
	        runTimer('thunder2off',4)
	end
		if t == 'thunder2off' then
		 triggerEvent('Play Animation','danceLeft','gf')
	 	 triggerEvent('Play Animation','idle','bf')
            setProperty('halloween2_bg_low.visible', true);
			setProperty('halloween2_bg.visible', false);

	        runTimer('thunder1',8)
		end

end



