@echo off
set T_FILENAME="TR_Deathbots (USA) (Rev 1) (Unl).nes"
set S_FILENAME="Deathbots (USA) (Rev 1) (Unl).nes"
set SCRIPTNAME="deathbotsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
