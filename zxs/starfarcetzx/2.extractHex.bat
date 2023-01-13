@echo off
set T_FILENAME="TR_Star Farce.tzx"
set SCRIPTNAME="starfarcetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
