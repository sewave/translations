@echo off
set T_FILENAME="Terminator, The (U) [!].nes"
set SCRIPTNAME="terminatorthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
