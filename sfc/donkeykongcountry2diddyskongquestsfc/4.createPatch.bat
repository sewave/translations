@echo off
set T_FILENAME="TR_Donkey Kong Country 2 - Diddy's Kong Quest (USA) (En,Fr) (Rev 1).sfc"
set S_FILENAME="Donkey Kong Country 2 - Diddy's Kong Quest (USA) (En,Fr) (Rev 1).sfc"
set SCRIPTNAME="donkeykongcountry2diddyskongquestsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
