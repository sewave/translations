@echo off
set T_FILENAME="TR_Taito Chase H.Q. (Europe).sms"
set S_FILENAME="Taito Chase H.Q. (Europe).sms"
set SCRIPTNAME="taitochasehqsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
