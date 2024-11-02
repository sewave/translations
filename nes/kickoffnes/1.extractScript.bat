@echo off
set T_FILENAME="Kick Off (Europe).nes"
set SCRIPTNAME="kickoffnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
