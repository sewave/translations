@echo off
set T_FILENAME="Somer Assault (U).pce"
set SCRIPTNAME="somerassaultpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
