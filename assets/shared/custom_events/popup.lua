windowAmount = 0
windowHeight = 400
windowWidth = 400
function onCreatePost()
	-- the main window's shit
	saveX = getPropertyFromClass("openfl.Lib", "application.window.x")
	saveY = getPropertyFromClass("openfl.Lib", "application.window.y")
	saveWidth = getPropertyFromClass('openfl.Lib', 'application.window.width')-windowWidth
	saveHeight = getPropertyFromClass('openfl.Lib', 'application.window.height')-windowHeight
end

function onEvent(name,va1,va2)
    	addHaxeLibrary("Sys")
	addHaxeLibrary("Application", "lime.app")
	addHaxeLibrary("Lib", "openfl")
	addHaxeLibrary("Paths")
	addHaxeLibrary("Sprite", "openfl.display")
	addHaxeLibrary("FlxSprite", "flixel")
	addHaxeLibrary("Matrix", "flixel.math")
	local garbungle='wind'
	for i=1,windowAmount,1 do
		garbungle=garbungle..'o'
	end
	garbungle=garbungle..'ne'
	if name == 'popup' then
		windowAmount = windowAmount+1
		setPropertyFromClass("flixel.FlxG", "autoPause", false) --lol
        	runHaxeCode(garbungle..[[ = Lib.application.createWindow({
			x: 0, //i cant for the life of me change these 2 things here
			y: 128, //ditto
			width: ]]..windowWidth..[[, //window width
			height: ]]..windowHeight..[[, //window height
			title:"]]..va2..[[", //title (filled in by value2 but u can change it here if u so please)
			borderless: false, //mario paint fly minigame
			alwaysOnTop: true //u can change this too but for what purpose
		});
		]]..garbungle..[[.x = ]]..saveX+(saveWidth*getRandomFloat(0,1))..[[;
		]]..garbungle..[[.y = ]]..saveY+(saveHeight*getRandomFloat(0,1))..[[;
    		cock = function() { //this is the function that closes the window when it's clicked, then decrements windowamt
    			//CoolUtil.browserLoad("https://www.youtube.com/watch?v=T2v0M9agvQU");
			]]..garbungle..[[.close();
    		};
    		gock = function() { //this is the function that decrements the windowamount anyway
			game.callOnLuas('closedPopsWindow',[]);
    		};
		bg = new FlxSprite().loadGraphic(Paths.image("]]..va1..[["));
		//add(bg);
		spriite = new Sprite();
    		]]..garbungle..[[.onMouseDown.removeAll();
        	]]..garbungle..[[.onMouseDown.add(cock,true);
        	]]..garbungle..[[.onClose.add(gock,true);

		m = new Matrix();
		spriite.graphics.beginBitmapFill(bg.pixels, m);
		spriite.graphics.drawRect(0, 0, bg.pixels.width, bg.pixels.height);
		spriite.graphics.endFill();
		FlxG.mouse.useSystemCursor = true;
		]]..garbungle..[[.stage.addChild(spriite);
        ]])
	end
end
function onPause() --REMOVE THIS IF IT'S INTERFERING WITH UR CUSTOM PAUSE SCREEN
	if windowAmount>0 then return Function_Stop else return Function_Continue end
end
function closedPopsWindow()
	windowAmount = windowAmount-1
end
function onDestroy()
	setPropertyFromClass("flixel.FlxG", "autoPause", true)
end