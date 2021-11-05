@echo off
set T_FILENAME="TR_Monster Party (USA).nes"
set S_FILENAME="Monster Party (USA).nes"
set SCRIPTNAME="monsterpartynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
