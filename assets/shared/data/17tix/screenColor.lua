function onCreatePost()
    makeLuaSprite('screenFlood', 'J')
    makeGraphic('screenFlood', 1286, 730, '0x000000')
    setLuaSpriteScrollFactor('screenFlood', 0, 0);
    scaleObject('screenFlood', 2, 2);
    setObjectCamera('screenFlood', 'hud')
    setObjectOrder('screenFlood', -10)
    addLuaSprite('screenFlood', false)
    setProperty('screenFlood.alpha', 0)

    makeLuaSprite('dmg', 'dmgOverlayRed', 0, 0)
    setLuaSpriteScrollFactor('dmg', 0, 0);
    addLuaSprite('dmg', false)
    setObjectCamera('dmg', 'other');
    setProperty('dmg.alpha', 0)
end


function onBeatHit()
    if curBeat == 256 then
        setProperty('dmg.alpha', 1)
        setProperty('screenFlood.alpha', 0.4)
        setProperty('dad.alpha', 0)
        setProperty('health', 2);
    end
    if curBeat == 260 then
        doTweenAlpha('screenFlood', 'screenFlood', 1, 1.2, linear)
    end
end

function onStepHit()
    if curStep == 1025 then
        doTweenAlpha('screenFlood', 'screenFlood', 0, 0.6, linear)
        doTweenAlpha('dmg', 'dmg', 0, 0.4, linear)
        --doTweenColor('screenFlood', 'screenFlood', 'FFFFFF', 0.6, linear)
    end
    if curStep == 1026 then
        doTweenAlpha('iconP2', 'iconP2', 0, 0.4, linear)
    end
end