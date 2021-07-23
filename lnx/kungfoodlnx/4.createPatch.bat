@echo off
set T_FILENAME="TR_Kung Food (USA, Europe).lnx"
set S_FILENAME="Kung Food (USA, Europe).lnx"
set SCRIPTNAME="kungfoodlnx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
