@echo off
set T_FILENAME="Final Soldier (J).pce"
set SCRIPTNAME="finalsoldierpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
