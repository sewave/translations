@echo off
set T_FILENAME="TR_Incredible Hulk, The (Europe, Brazil).sms"
set S_FILENAME="Incredible Hulk, The (Europe, Brazil).sms"
set SCRIPTNAME="incrediblehulkthesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
