@echo off
set T_FILENAME="TR_Tengen World Cup Soccer (USA, Europe).gg"
set S_FILENAME="Tengen World Cup Soccer (USA, Europe).gg"
set SCRIPTNAME="tengenworldcupsoccergg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
