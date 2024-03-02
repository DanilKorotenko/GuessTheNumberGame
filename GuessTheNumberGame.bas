RangeMax=10
RangeMin=5
'RandomNumber=int(rnd(1)*(RangeMax - RangeMin))+RangeMin
RandomNumber=5
InputNumber=0
PRINT "Welcome to the funny number game!"
PRINT 
Print "Try to guess the number between: ";RangeMin; " and: ";RangeMax

Do
    Input "Your sussestion: "; InputNumber
    if RandomNumber=InputNumber then
        end
    else
        GOSUB 300 'Check number
    end if
Loop until RandomNumber=InputNumber

Print "You win!"

end

300 'check how far is input number

aDifference = abs(RandomNumber - InputNumber)
aRangeDifference = abs(RangeMax - RangeMin)

if aDifference <= int(aRangeDifference * 0.5) then 
    print "Very close!" ' difference less than 50%
    return
end if

if aDifference <= int(aRangeDifference * 1) then 
    print "Too far!" ' difference less than 100%
    return
end if

return