function onCreate()
	makeLuaSprite('arcade', 'arcade', -600, -200);
	setLuaSpriteScrollFactor('arcade', 0.9, 0.9);
	
	makeLuaSprite('floor-arcade', 'floor-arcade', -640, 600);
	setLuaSpriteScrollFactor('floor-arcade', 0.9, 0.9);
	scaleObject('floor-arcade', 1.1, 1.1);

	if not lowQuality then
		makeLuaSprite('nothing', 'nothing', -125, -100);
		setLuaSpriteScrollFactor('nothing', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('nothing', 'nothing', 1225, -100);
		setLuaSpriteScrollFactor('nothing', 0.9, 0.9);
		scaleObject('nothing', 1.1, 1.1);
		setPropertyLuaSprite('nothing', 'flipX', true); 

		makeLuaSprite('nothing', 'nothing', -500, -300);
		setLuaSpriteScrollFactor('nothing', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('arcade', false);
	addLuaSprite('floor-arcade', false);
	addLuaSprite('nothing', false);
	addLuaSprite('nothing', false);
	
	close(true);
end