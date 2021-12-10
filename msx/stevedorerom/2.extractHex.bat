@echo off
set T_FILENAME="TR_Stevedore (2020) (theNestruo & Wonder) [v1.2].rom"
set SCRIPTNAME="stevedorerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
