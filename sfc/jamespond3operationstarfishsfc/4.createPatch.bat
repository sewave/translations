@echo off
set T_FILENAME="TR_James Pond 3 - Operation Starfish (E).smc"
set S_FILENAME="James Pond 3 - Operation Starfish (E).smc"
set SCRIPTNAME="jamespond3operationstarfishsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
