@echo off
set T_FILENAME="TR_Argos no Juujiken (J) [!].sms"
set S_FILENAME="Argos no Juujiken (J) [!].sms"
set SCRIPTNAME="argosnojuujikensms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
