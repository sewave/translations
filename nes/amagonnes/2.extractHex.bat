@echo off
set T_FILENAME="TR_Amagon (USA).nes"
set SCRIPTNAME="amagonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 170:30,5150:20,51B0:20,54E0:40,55D0:20,56E0:20,C200:10,C2C0:20
pause
