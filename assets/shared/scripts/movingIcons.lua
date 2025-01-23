local turnValue = 20

local turnLeft = false

function onBeatHit()
    if curBeat % 2 == 0 then
        turn()
    else 
        turnValue = 0
    end

    if getHealth() > 0.4 then
        setProperty('iconP1.angle',turnValue)
    else
        setProperty('iconP1.angle', 0)
    end

    if getHealth() < 1.6 then
        setProperty('iconP2.angle',turnValue)
    else
        setProperty('iconP2.angle', 0)
    end
    doTweenAngle('iconTween1','iconP1',0,crochet/1000,'quadOut')
    doTweenAngle('iconTween2','iconP2',0,crochet/1000,'quadOut')
end

function turn()
    if turnLeft == true then
        turnValue = -10
        turnLeft = false
    else
        turnValue = 10
        turnLeft = true
    end
end
