Cell-DEVS model of Daisyworld
-----------------------------

The Daisyworld model showing the effect of planetary life on the planet's climate.  Daisyworld is inhabited solely by black and white daisies.  The daisies behave as follows:

- black daisies live in temperatures below 25 degrees
  - they absorb heat and raise the temperature by 1 degree
- white daisies live in temperatures above 15 degrees
  - they reflect heat and lower the temperature by 1 degree


To run the Daisyworld models follow these instructions:

- install the Daisyworld models in a directory inside the directory containing the default
  DEVS simu.exe and drawlog.exe executables
- run the desired daisyworld*.bat batch file
- open the desired daisyworld*.out output file and view the results (the numbers represent
  temperature values for each daisy cell, white daisies cannot survive below 15 degrees and 
  black daisies cannot survive above 25 degrees)
- if you use the visualization applet then use the daisyworld.pal palette file


The Daisyworld model includes following files:

daisyworld.bat		batch file to run the Daisyworld model
daisyworld.ma		Daisyworld model definition
daisyworld.val		initial cell values varying from 5 to 35 for Daisyworld
daisyworld.log		log file obtained by simulating Daisyworld
daisyworld.out		output file obtained by running drawlog on the Disyworld log file
daisyworld.pal		palette file for all Daisyworld models

daisyworld10.bat	batch file to run the Daisyworld10 model 
daisyworld10.ma		Daisyworld10 model definition with an initial temperature of 10 degrees
daisyworld10.val	initial cell values of 10 for Daisyworld10 (redundant)
daisyworld10.log	log file obtained by simulating Daisyworld10
daisyworld10.out	output file obtained by running drawlog on the Disyworld10 log file

daisyworld20.bat	batch file to run the Daisyworld20 model 
daisyworld20.ma		Daisyworld20 model definition with an initial temperature of 20 degrees
daisyworld20.val	initial cell values of 20 for Daisyworld20 (redundant)
daisyworld20.log	log file obtained by simulating Daisyworld20
daisyworld20.out	output file obtained by running drawlog on the Disyworld20 log file

daisyworld30.bat	batch file to run the Daisyworld30 model 
daisyworld30.ma		Daisyworld30 model definition with an initial temperature of 30 degrees
daisyworld30.val	initial cell values of 30 for Daisyworld30 (redundant)
daisyworld30.log	log file obtained by simulating Daisyworld30
daisyworld30.out	output file obtained by running drawlog on the Disyworld30 log file

daisyworld-empty.val	template file for cell values
