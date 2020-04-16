@echo off
set T_FILENAME="TR_Slap Shot (UB) (V1.2) [!].sms"
set S_FILENAME="Slap Shot (UB) (V1.2) [!].sms"
set SCRIPTNAME="slapshotsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
