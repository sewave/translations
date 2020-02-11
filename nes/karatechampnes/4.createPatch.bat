@echo off
set T_FILENAME="TR_Karate Champ (USA) (Rev A).nes"
set S_FILENAME="Karate Champ (USA) (Rev A).nes"
set SCRIPTNAME="karatechampnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
