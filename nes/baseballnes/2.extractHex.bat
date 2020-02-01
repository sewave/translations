@echo off
set T_FILENAME="TR_Baseball (U) [!].nes"
set SCRIPTNAME="baseballnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4120:10,4210:10,43C0:50,4AE0:10
pause
