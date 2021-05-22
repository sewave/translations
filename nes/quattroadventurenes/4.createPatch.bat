@echo off
set T_FILENAME="TR_Quattro Adventure (USA) (Unl).nes"
set S_FILENAME="Quattro Adventure (USA) (Unl).nes"
set SCRIPTNAME="quattroadventurenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
