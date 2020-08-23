@echo off
set T_FILENAME="TR_Metal Morph (USA).sfc"
set S_FILENAME="Metal Morph (USA).sfc"
set SCRIPTNAME="metalmorphsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
