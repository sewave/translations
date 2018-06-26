@echo off
set T_FILENAME="Darius Alpha (J).pce"
set SCRIPTNAME="dariusalphapce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
