@echo off
set T_FILENAME="TR_Wings 2 - Aces High (USA).sfc"
set S_FILENAME="Wings 2 - Aces High (USA).sfc"
set SCRIPTNAME="wings2aceshighsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
