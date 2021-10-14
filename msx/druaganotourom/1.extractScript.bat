@echo off
set T_FILENAME="Druaga no Tou (Japan).rom"
set SCRIPTNAME="druaganotourom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
