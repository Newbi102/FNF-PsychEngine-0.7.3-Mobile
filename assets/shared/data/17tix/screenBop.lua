tiltLeft = true 
canBop = false
alt = false

function onUpdate(elapsed)
    if curBeat > 31 and curBeat < 192 then
        if curBeat > 31 and curBeat < 64 then
            canBop = true
            alt = false
        elseif curBeat > 127 and curBeat < 160 then
            canBop = true
            alt = true
        else
            canBop = false
            alt = false
        end
    else
        canBop = false
        alt = false
    end
end

function onBeatHit()
    if canBop then
        if alt then
            if curBeat % 4 == 2 then
                if tiltLeft then
                    setProperty('camGame.angle', 4)
                    doTweenAngle(ct, 'camGame', 0, 0.3, quintOut)
                    tiltLeft = false
                else
                    setProperty('camGame.angle', -4)
                    doTweenAngle(ct, 'camGame', 0, 0.3, quintOut)
                    tiltLeft = true
                end
            end
        else
            if curBeat % 2 == 1 then
                if tiltLeft then
                    setProperty('camGame.angle', 4)
                    doTweenAngle(ct, 'camGame', 0, 0.3, quintOut)
                    tiltLeft = false
                else
                    setProperty('camGame.angle', -4)
                    doTweenAngle(ct, 'camGame', 0, 0.3, quintOut)
                    tiltLeft = true
                end
            end
        end
    end
end

