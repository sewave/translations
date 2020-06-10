@echo off
set T_FILENAME="TR_Heavy Nova (U) [!].bin"
set S_FILENAME="Heavy Nova (U) [!].bin"
set SCRIPTNAME="heavynovasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
