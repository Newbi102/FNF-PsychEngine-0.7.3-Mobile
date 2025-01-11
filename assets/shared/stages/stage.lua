function onCreatePost()
	makeLuaSprite('bg');
	makeGraphic('bg', screenWidth * 2, screenHeight * 2, 'FFFFFF');
	scaleObject('bg', 2, 2);
	setScrollFactor('bg');
	screenCenter('bg');
	addLuaSprite('bg');
end