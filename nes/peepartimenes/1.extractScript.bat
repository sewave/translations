@echo off
set T_FILENAME="Peepar Time (Japan).nes"
set SCRIPTNAME="peepartimenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
