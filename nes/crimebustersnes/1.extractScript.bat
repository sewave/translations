@echo off
set T_FILENAME="Crime Busters (Unknown) (Unl).nes"
set SCRIPTNAME="crimebustersnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
