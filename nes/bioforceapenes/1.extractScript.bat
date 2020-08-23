@echo off
set T_FILENAME="Bio Force Ape (Japan) (En) (Proto).nes"
set SCRIPTNAME="bioforceapenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
