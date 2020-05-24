@echo off
set T_FILENAME="Mr. Do! (U).gb"
set SCRIPTNAME="mrdogb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
