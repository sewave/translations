@echo off
set T_FILENAME="TR_Secret Commando (E) [!].sms"
set S_FILENAME="Secret Commando (E) [!].sms"
set SCRIPTNAME="secretcommandosms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
