@echo off
set T_FILENAME="TR_Bugs Bunny - Rabbit Rampage (USA).sfc"
set S_FILENAME="Bugs Bunny - Rabbit Rampage (USA).sfc"
set SCRIPTNAME="bugsbunnyrabbitrampagesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
