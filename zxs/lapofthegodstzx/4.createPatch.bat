@echo off
set T_FILENAME="TR_Lap Of The Gods.tzx"
set S_FILENAME="Lap Of The Gods.tzx"
set SCRIPTNAME="lapofthegodstzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
