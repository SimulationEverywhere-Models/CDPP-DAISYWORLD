Cell-DEVS model of Daisyworld (v2)
----------------------------------

Version 2 of the Daisyworld model was improved to explicitly show the daisies' colour as well their temperature as follows:

- daisy colour is denoted by the integer part of the cell value
  - 0 denotes a black daisy
  - 1 denotes a white daisy
- daisy temperature is denoted by the fractional part of the cell value
  - .xxyyy denotes a temperature of xx.yyy degrees
- black daisies live in temperatures below 25 degrees
  - they absorb heat and raise the temperature by 1 degree
- white daisies live in temperatures above 15 degrees
  - they reflect heat and lower the temperature by 1 degree


To run the Daisyworld v2 models follow these instructions:

- install the Daisyworld models in a directory inside the directory containing the default
  DEVS simu.exe and drawlog.exe executables
- run the desired daisyworld*.bat batch file
- open the desired daisyworld*.out output file and view the results (the integer parts represent
  the colour of each daisy cell and the fractional parts represent the temperature of each daisy
  cell)
- if you use the visualization applet then use the daisyworld.pal palette file


The Daisyworld model includes following files:

daisyworld.bat		batch file to run the Daisyworld model
daisyworld.ma		Daisyworld model definition
daisyworld.val		initial cell values varying between black and white and temperatures 
			from 5 to 35 for Daisyworld
daisyworld.log		log file obtained by simulating Daisyworld
daisyworld.out		output file obtained by running drawlog on the Disyworld log file
daisyworld.pal		palette file for all Daisyworld models

daisyworldb10.bat	batch file to run the DaisyworldB10 model 
daisyworldb10.ma	DaisyworldB10 model definition with black daisies and an initial 
			temperature of 10 degrees
daisyworldb10.log	log file obtained by simulating DaisyworldB10
daisyworldb10.out	output file obtained by running drawlog on the DisyworldB10 log file

daisyworldb20.bat	batch file to run the DaisyworldB20 model 
daisyworldb20.ma	DaisyworldB20 model definition with black daisies and an initial 
			temperature of 20 degrees
daisyworldb20.log	log file obtained by simulating DaisyworldB20
daisyworldb20.out	output file obtained by running drawlog on the DisyworldB20 log file

daisyworldb30.bat	batch file to run the DaisyworldB30 model 
daisyworldb30.ma	DaisyworldB30 model definition with black daisies and an initial 
			temperature of 30 degrees
daisyworldb30.log	log file obtained by simulating DaisyworldB30
daisyworldb30.out	output file obtained by running drawlog on the DisyworldB30 log file

daisyworldw10.bat	batch file to run the DaisyworldW10 model 
daisyworldw10.ma	DaisyworldW10 model definition with white daisies and an initial 
			temperature of 10 degrees
daisyworldw10.log	log file obtained by simulating DaisyworldW10
daisyworldw10.out	output file obtained by running drawlog on the DisyworldW10 log file

daisyworldw20.bat	batch file to run the DaisyworldW20 model 
daisyworldw20.ma	DaisyworldW20 model definition with white daisies and an initial 
			temperature of 20 degrees
daisyworldw20.log	log file obtained by simulating DaisyworldW20
daisyworldw20.out	output file obtained by running drawlog on the DisyworldW120 log file

daisyworldw30.bat	batch file to run the DaisyworldW30 model 
daisyworldw30.ma	DaisyworldW30 model definition with white daisies and an initial 
			temperature of 30 degrees
daisyworldw30.log	log file obtained by simulating DaisyworldW30
daisyworldw30.out	output file obtained by running drawlog on the DisyworldW30 log file

daisyworld-empty.val	template file for cell values
