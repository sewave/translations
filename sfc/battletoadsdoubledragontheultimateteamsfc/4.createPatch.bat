@echo off
set T_FILENAME="TR_Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set S_FILENAME="Battletoads & Double Dragon - The Ultimate Team (U) [!].smc"
set SCRIPTNAME="battletoadsdoubledragontheultimateteamsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
