@echo off
set T_FILENAME="TR_Aladdin (Europe, Brazil).sms"
set S_FILENAME="Aladdin (Europe, Brazil).sms"
set SCRIPTNAME="aladdinsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
