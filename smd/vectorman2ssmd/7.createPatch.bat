@echo off
set T_FILENAME="TR_Vectorman 2 (U) [!].bin"
set S_FILENAME="Vectorman 2 (U) [!].bin"
set SCRIPTNAME="vectorman2ssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
