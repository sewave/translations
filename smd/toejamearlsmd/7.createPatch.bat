@echo off
set T_FILENAME="TR_Toejam & Earl (UE) (REV00) [!].bin"
set S_FILENAME="Toejam & Earl (UE) (REV00) [!].bin"
set SCRIPTNAME="toejamearlsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
