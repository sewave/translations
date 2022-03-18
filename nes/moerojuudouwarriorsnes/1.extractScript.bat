@echo off
set T_FILENAME="Moero!! Juudou Warriors (Japan) [T+ENG].nes"
set SCRIPTNAME="moerojuudouwarriorsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
