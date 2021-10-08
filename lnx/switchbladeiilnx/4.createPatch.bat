@echo off
set T_FILENAME="TR_Switchblade II (USA, Europe).lnx"
set S_FILENAME="Switchblade II (USA, Europe).lnx"
set SCRIPTNAME="switchbladeiilnx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
