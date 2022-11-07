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
initialvalue : 20
initialCellsValue : daisyworld20.val
localtransition : heatabsorptionandcolourbehaviour

[heatabsorptionandcolourbehaviour]
% black daisy
% absorbs heat and raises temperature by 1
rule : { ( ( (-1,-1) + (-1,0) + (-1,1) + 
             (0,-1)  + (0,0)  + (0,1)  + 
             (1,-1)  + (1,0)  + (1,1) ) / 9 ) + 1 } 
       100
       { (0,0) < 15 }
% either black or white daisy
% absorbs heat and either raises or drops temperature by 1
rule : { ( ( (-1,-1) + (-1,0) + (-1,1) + 
             (0,-1)  + (0,0)  + (0,1)  + 
             (1,-1)  + (1,0)  + (1,1) ) / 9 ) + randomSign } 
       100
       { ( (0,0) >= 15 ) and ( (0,0) <= 25 ) }
% white daisy
% absorbs heat and drops temperature by 1
rule : { ( ( (-1,-1) + (-1,0) + (-1,1) + 
             (0,-1)  + (0,0)  + (0,1)  + 
             (1,-1)  + (1,0)  + (1,1) ) / 9 ) - 1 } 
       100
       { (0,0) > 25 }



% [heatabsorption]
% rule : { ( (-1,-1) + (-1,0) + (-1,1) + 
%            (0,-1)  + (0,0)  + (0,1)  + 
%            (1,-1)  + (1,0)  + (1,1) ) / 9 } 
%        100
%        { t } 
% 
% [colourbehaviour]
% % black daisy
% rule : { (0,0) + 1 }
%        100
%        { (0,0) < 15 }
% % either black or white daisy
% rule : { (0,0) + randomSign }
%        100
%        { ( (0,0) >= 15 ) and ( (0,0) <= 25 ) }
% % white daisy
% rule : { (0,0) - 1 }
%        100
%        { (0,0) > 25 }

