local xx = 525;
local yy = 450;
local xx2 = 850;
local yy2 = 350;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;


function onCreate()
	--background boi


	makeLuaSprite('stage1', 'forest/backk', -600, -300)
	setLuaSpriteScrollFactor('stage1', 1.0, 1.0)

	makeLuaSprite('stage2', 'forest/back2', -600, -300)
	setLuaSpriteScrollFactor('stage2', 1.0, 1.0)

	makeLuaSprite('stage3', 'forest/back3', -600, -300)
	setLuaSpriteScrollFactor('stage3', 0.8, 1.0)

	makeLuaSprite('stage4', 'forest/back4', -600, -300)
	setLuaSpriteScrollFactor('stage4', 1.0, 1.0)

        makeAnimatedLuaSprite('fuego', 'forest/fire', 600, 200);
	addAnimationByPrefix('fuego', 'idle', 'fire idle', 18, true);


	addLuaSprite('stage4', false)
	addLuaSprite('stage3', false)
	addLuaSprite('stage2', false)
	addLuaSprite('stage1', false)
	addLuaSprite('stage', true)
	addLuaSprite('fuego', false)
	addLuaSprite('box', false)

end
function onUpdate(elapsed)
	-- getSongPosition();


	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
