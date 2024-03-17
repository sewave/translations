@echo off
set T_FILENAME="TR_Robin The Outlaw.tzx"
set S_FILENAME="Robin The Outlaw.tzx"
set SCRIPTNAME="robintheoutlawtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
