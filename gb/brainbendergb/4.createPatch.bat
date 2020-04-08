@echo off
set T_FILENAME="TR_Brainbender (U) [!].gb"
set S_FILENAME="Brainbender (U) [!].gb"
set SCRIPTNAME="brainbendergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
