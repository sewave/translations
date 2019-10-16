@echo off
set T_FILENAME="TR_James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set S_FILENAME="James 'Buster' Douglas Knockout Boxing (U) [!].sms"
set SCRIPTNAME="jamesbusterdouglasknockoutboxingsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
