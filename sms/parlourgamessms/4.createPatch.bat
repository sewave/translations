@echo off
set T_FILENAME="TR_Parlour Games (USA, Europe).sms"
set S_FILENAME="Parlour Games (USA, Europe).sms"
set SCRIPTNAME="parlourgamessms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
