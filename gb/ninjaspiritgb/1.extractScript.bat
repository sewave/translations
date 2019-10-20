@echo off
set T_FILENAME="Ninja Spirit (J).gb"
set SCRIPTNAME="ninjaspiritgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
