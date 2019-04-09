@echo off
set T_FILENAME="Spelunker (U) [!].nes"
set SCRIPTNAME="spelunkernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
