@echo off
set T_FILENAME="TR_Ace of Aces (E) [!].sms"
set S_FILENAME="Ace of Aces (E) [!].sms"
set SCRIPTNAME="aceofacessms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
