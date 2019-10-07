@echo off
set T_FILENAME="TR_Aero the Acro-Bat 2 (U) [!].bin"
set S_FILENAME="Aero the Acro-Bat 2 (U) [!].bin"
set SCRIPTNAME="aerotheacrobat2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
