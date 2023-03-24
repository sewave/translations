@echo off
set T_FILENAME="TR_Manic Miner.tzx"
set S_FILENAME="Manic Miner.tzx"
set SCRIPTNAME="manicminertzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
