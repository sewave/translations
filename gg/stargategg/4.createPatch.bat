@echo off
set T_FILENAME="TR_Stargate (World).gg"
set S_FILENAME="Stargate (World).gg"
set SCRIPTNAME="stargategg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
