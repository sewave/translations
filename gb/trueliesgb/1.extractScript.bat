@echo off
set T_FILENAME="True Lies (USA, Europe).gb"
set SCRIPTNAME="trueliesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
