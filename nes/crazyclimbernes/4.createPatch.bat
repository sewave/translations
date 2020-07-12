@echo off
set T_FILENAME="TR_Crazy Climber (Japan).nes"
set S_FILENAME="Crazy Climber (Japan).nes"
set SCRIPTNAME="crazyclimbernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
