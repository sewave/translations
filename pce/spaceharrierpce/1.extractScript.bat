@echo off
set T_FILENAME="Space Harrier (U).pce"
set SCRIPTNAME="spaceharrierpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
