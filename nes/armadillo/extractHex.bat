@echo off 
set T_FILENAME="TR_Armadillo (J) [T+Eng_vice].nes"
set SCRIPTNAME="armadillo"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50470:80,5F510:90,4FA90:400
pause 
