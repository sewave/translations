@echo off
set T_FILENAME="TR_Donkey Kong Country 2 - Diddy's Kong Quest (USA) (En,Fr) (Rev 1).sfc"
set SCRIPTNAME="donkeykongcountry2diddyskongquestsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C10E0:200,2D57EF:650
pause
