@echo off
set T_FILENAME="TR_Wrecking Crew (W) [!].nes"
set SCRIPTNAME="wreckingcrewnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9EC0:50,9150:100
pause
