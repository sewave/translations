@echo off
set T_FILENAME="TR_Platoon (USA) (Rev 1).nes"
set S_FILENAME="Platoon (USA) (Rev 1).nes"
set SCRIPTNAME="platoonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
