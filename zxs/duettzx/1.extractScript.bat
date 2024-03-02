@echo off
set T_FILENAME="DUET.TZX"
set SCRIPTNAME="duettzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
