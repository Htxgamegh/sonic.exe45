function onCreate()
	-- background shit
	makeLuaSprite('Back', 'stages/Hill Back', -900, -100);
	setLuaSpriteScrollFactor('Back', 1.0, 1.0);
	scaleObject('Back', 1.0, 1.0);

	makeLuaSprite('Front', 'stages/Hill Front', -750, -200);
	setLuaSpriteScrollFactor('Front', 0.9, 0.9);
	scaleObject('Front', 1.0, 1.0);

	addLuaSprite('Back', false);
	addLuaSprite('Front', false);



	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end