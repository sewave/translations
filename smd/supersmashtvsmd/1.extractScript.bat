@echo off
set T_FILENAME="Super Smash TV (UE) [!].bin"
set SCRIPTNAME="supersmashtvsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
