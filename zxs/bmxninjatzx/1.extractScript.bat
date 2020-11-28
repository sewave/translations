@echo off
set T_FILENAME="BMX Ninja (Alternative).tzx"
set SCRIPTNAME="bmxninjatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
