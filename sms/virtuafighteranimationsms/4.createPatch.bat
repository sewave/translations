@echo off
set T_FILENAME="TR_Virtua Fighter Animation (J) [!].sms"
set S_FILENAME="Virtua Fighter Animation (J) [!].sms"
set SCRIPTNAME="virtuafighteranimationsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
