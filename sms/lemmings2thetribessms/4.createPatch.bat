@echo off
set T_FILENAME="TR_Lemmings 2 - The Tribes (Unknown) (Proto).sms"
set S_FILENAME="Lemmings 2 - The Tribes (Unknown) (Proto).sms"
set SCRIPTNAME="lemmings2thetribessms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
