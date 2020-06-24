@echo off
set T_FILENAME="Worms (E) [!].bin"
set SCRIPTNAME="wormssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
