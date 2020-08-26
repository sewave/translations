@echo off
set T_FILENAME="TR_Monster Truck Rally (USA).nes"
set S_FILENAME="Monster Truck Rally (USA).nes"
set SCRIPTNAME="monstertruckrallynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
