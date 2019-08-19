@echo off
set T_FILENAME="TR_Incredible Crash Dummies, The (E) [!].sms"
set S_FILENAME="Incredible Crash Dummies, The (E) [!].sms"
set SCRIPTNAME="incrediblecrashdummiesthesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
