@echo off
set T_FILENAME="TR_Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set S_FILENAME="Alex Kidd in Miracle World (USA, Europe) (Rev 1).sms"
set SCRIPTNAME="alexkiddinmiracleworldsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
