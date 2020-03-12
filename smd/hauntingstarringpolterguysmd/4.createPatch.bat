@echo off
set T_FILENAME="TR_Haunting Starring Polterguy (UE) [!].bin"
set S_FILENAME="Haunting Starring Polterguy (UE) [!].bin"
set SCRIPTNAME="hauntingstarringpolterguysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
