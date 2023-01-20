@echo off
set T_FILENAME="TR_Pinochio 32X Working.32x"
set S_FILENAME="Pinochio 32X Working.32x"
set SCRIPTNAME="pinochio32xworking32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
