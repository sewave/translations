@echo off
set T_FILENAME="Ninja Gaiden Shadow (U).gb"
set SCRIPTNAME="ninjagaidenshadowgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
