@echo off
set T_FILENAME="Rastan Saga II (Japan).pce"
set SCRIPTNAME="rastansaga2pce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
