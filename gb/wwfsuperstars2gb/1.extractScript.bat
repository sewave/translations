@echo off
set T_FILENAME="WWF Superstars 2 (USA, Europe).gb"
set SCRIPTNAME="wwfsuperstars2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
