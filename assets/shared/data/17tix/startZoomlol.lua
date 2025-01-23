function onCreatePost()
    setProperty('camGame.zoom', 0.01)
end

function onSongStart()
    runHaxeCode([[
        FlxTween.tween(camGame, {zoom: 0.7}, 0.5, {type: FlxTween.ONESHOT, ease: FlxEase.quadOut})
    ]])
end