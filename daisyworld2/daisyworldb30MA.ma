[top]
components : daisyworld

[daisyworld]
type : cell
dim : (10,10)
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : daisyworld(-1,-1) daisyworld(-1,0) daisyworld(-1,1) 
neighbors : daisyworld(0,-1)  daisyworld(0,0)  daisyworld(0,1) 
neighbors : daisyworld(1,-1)  daisyworld(1,0)  daisyworld(1,1) 
%
% black daisies with a temperature of 30 degrees
%
initialvalue : 0.3
localtransition : heatabsorptionandcolourbehaviour

[heatabsorptionandcolourbehaviour]
%
% daisy colour is denoted by the integer part of the cell value
% 0 denotes a black daisy
% 1 denotes a white daisy
%
% daisy temperature is denoted by the fractional part of the cell value
% .xxyyy denotes a temperature of xx.yyy degrees
%
% black daisy
% lives in temperatures below 25 degrees
% absorbs heat and raises temperature by 1 degree
%
rule : { trunc((0,0)) + 0.01 +
         ( fractional((-1,-1)) + fractional((-1,0)) + fractional((-1,1)) +
           fractional((0,-1))  + fractional((0,0))  + fractional((0,1)) +
           fractional((1,-1))  + fractional((1,0))  + fractional((1,1)) ) / 9 } 
       100
       { ( trunc((0,0)) = 0 ) and ( fractional((0,0)) < 0.25 ) }

%
% black daisy
% replaced by white daisy in temperatures of 25 degrees and above
%
rule : { (0,0) + 1 }
       150
       { ( trunc((0,0)) = 0 ) and ( fractional((0,0)) >= 0.25 ) }
%
% white daisy
% lives in temperatures above 15 degrees
% absorbs heat and drops temperature by 1 degree
%
rule : { trunc((0,0)) - 0.01 +
         ( fractional((-1,-1)) + fractional((-1,0)) + fractional((-1,1)) +
           fractional((0,-1))  + fractional((0,0))  + fractional((0,1)) +
           fractional((1,-1))  + fractional((1,0))  + fractional((1,1)) ) / 9 } 
       100
       { ( trunc((0,0)) = 1 ) and ( fractional((0,0)) > 0.15 ) }

%
% white daisy
% replaced by black daisy in temperatures of 15 degrees and below
%
rule : { (0,0) - 1 }
       150
       { ( trunc((0,0)) = 1 ) and ( fractional((0,0)) <= 0.15 ) }
