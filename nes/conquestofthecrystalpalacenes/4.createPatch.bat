@echo off
set T_FILENAME="TR_Conquest of the Crystal Palace (USA).nes"
set S_FILENAME="Conquest of the Crystal Palace (USA).nes"
set SCRIPTNAME="conquestofthecrystalpalacenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
