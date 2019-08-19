@echo off
set T_FILENAME="TR_Incredible Crash Dummies, The (U).gg"
set SCRIPTNAME="incrediblecrashdummiesthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
