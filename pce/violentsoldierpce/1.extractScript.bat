@echo off
set T_FILENAME="Violent Soldier (Japan).pce"
set SCRIPTNAME="violentsoldierpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
