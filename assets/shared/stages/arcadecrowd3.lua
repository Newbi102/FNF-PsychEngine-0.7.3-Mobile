function onCreate()
	makeLuaSprite('closed', 'closed', -600, -200);
	setLuaSpriteScrollFactor('closed', 0.9, 0.9);
        
	makeLuaSprite('floor-arcade', 'floor-arcade', -640, 600);
	setLuaSpriteScrollFactor('floor-arcade', 0.9, 0.9);
	scaleObject('floor-arcade', 1.1, 1.1);


		makeAnimatedLuaSprite('s&p', 's&p', 20, 200);
	        luaSpriteAddAnimationByPrefix('s&p', 's&p', 'Bottom Level Boppers', 24, true);
	        setLuaSpriteScrollFactor('s&p', 0.9, 0.9);
		
		makeAnimatedLuaSprite('crowd2', 'crowd2', -600, -220);
	        luaSpriteAddAnimationByPrefix('crowd2', 'crowd2', 'Bottom Level Boppers', 24, true);
	        setLuaSpriteScrollFactor('crowd2', 0.9, 0.9);

		makeAnimatedLuaSprite('crowd1', 'crowd1', -600, -220);
	        luaSpriteAddAnimationByPrefix('crowd1', 'crowd1', 'Upper Crowd Bob', 24, true);
	        setLuaSpriteScrollFactor('crowd1', 0.9, 0.9); 


	addLuaSprite('closed', false);
	addLuaSprite('floor-arcade', false);
end

function onStepHit()
	if curStep == 262 then
		addLuaSprite('crowd2', false);
		addLuaSprite('crowd1', false);
    end
end