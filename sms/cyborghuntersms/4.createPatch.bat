@echo off
set T_FILENAME="TR_Cyborg Hunter (USA, Europe).sms"
set S_FILENAME="Cyborg Hunter (USA, Europe).sms"
set SCRIPTNAME="cyborghuntersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
