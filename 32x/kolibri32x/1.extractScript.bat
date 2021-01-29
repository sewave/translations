@echo off
set T_FILENAME="Kolibri (USA, Europe).32x"
set SCRIPTNAME="kolibri32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
