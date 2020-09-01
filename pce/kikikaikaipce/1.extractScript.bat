@echo off
set T_FILENAME="Kiki Kaikai (Japan).pce"
set SCRIPTNAME="kikikaikaipce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
