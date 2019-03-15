@echo off
set T_FILENAME="Clu Clu Land (W) [!].nes"
set SCRIPTNAME="cluclulandnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
