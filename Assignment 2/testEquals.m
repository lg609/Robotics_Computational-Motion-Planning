function  testEquals( textTitle, textCondition, expectedValue, funct )
%Test Test wrapper used to call and present test outcomes for the 
%calling function
result = funct;
if expectedValue == result
    resultText = 'success';
else    
    resultText = 'fail';
end
fprintf('%s - %s - %s, Expected Value: %d, Result: %d\n',textTitle,resultText,textCondition,expectedValue,result);
end