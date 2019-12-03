@echo off
set T_FILENAME="Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set SCRIPTNAME="battletoadsdoubledragontheultimateteamsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
