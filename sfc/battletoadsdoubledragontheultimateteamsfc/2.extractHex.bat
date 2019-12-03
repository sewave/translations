@echo off
set T_FILENAME="TR_Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set SCRIPTNAME="battletoadsdoubledragontheultimateteamsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
