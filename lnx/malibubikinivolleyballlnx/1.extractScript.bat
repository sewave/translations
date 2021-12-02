@echo off
set T_FILENAME="Malibu Bikini Volleyball (USA, Europe).lnx"
set SCRIPTNAME="malibubikinivolleyballlnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
