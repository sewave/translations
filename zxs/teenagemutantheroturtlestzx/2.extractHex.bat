@echo off
set T_FILENAME="TR_Teenage Mutant Hero Turtles.tzx"
set SCRIPTNAME="teenagemutantheroturtlestzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
