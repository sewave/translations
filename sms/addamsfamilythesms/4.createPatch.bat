@echo off
set T_FILENAME="TR_Addams Family, The (Europe).sms"
set S_FILENAME="Addams Family, The (Europe).sms"
set SCRIPTNAME="addamsfamilythesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
