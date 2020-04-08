@echo off
set T_FILENAME="TR_Boxxle 2 (U) [!].gb"
set S_FILENAME="Boxxle 2 (U) [!].gb"
set SCRIPTNAME="boxxle2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
