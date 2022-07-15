@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (USA).nes"
set SCRIPTNAME="terminator2judgmentdaynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20620:100,25F20:A0,32780:40,33F60:50,34D10:20,34D90:30,34E60:40
pause
