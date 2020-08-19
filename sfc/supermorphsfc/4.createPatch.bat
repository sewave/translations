@echo off
set T_FILENAME="TR_Super Morph (Europe).sfc"
set S_FILENAME="Super Morph (Europe).sfc"
set SCRIPTNAME="supermorphsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
