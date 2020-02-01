@echo off
set T_FILENAME="TR_Baseball (U) [!].nes"
set S_FILENAME="Baseball (U) [!].nes"
set SCRIPTNAME="baseballnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
