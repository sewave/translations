@echo off
set T_FILENAME="TL_Panic Restaurant (U) [!].nes"
set SCRIPTNAME="panicres"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FF10-4000F,3F210:200
pause
