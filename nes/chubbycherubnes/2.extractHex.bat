@echo off
set T_FILENAME="TR_Chubby Cherub (U) [!].nes"
set SCRIPTNAME="chubbycherubnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 86D0:20,9210:100,9150:10,91B0:10
pause
