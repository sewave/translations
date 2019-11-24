@echo off
set T_FILENAME="TR_Star Force (1985) (Hudson) (J).rom"
set SCRIPTNAME="starforcerom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5454:8
pause
