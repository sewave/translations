@echo off
set T_FILENAME="Pico Pico (Japan).rom"
set SCRIPTNAME="picopicorom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
