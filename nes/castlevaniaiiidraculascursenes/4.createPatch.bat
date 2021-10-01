@echo off
set T_FILENAME="TR_Castlevania III - Dracula's Curse (USA).nes"
set S_FILENAME="Castlevania III - Dracula's Curse (USA).nes"
set SCRIPTNAME="castlevaniaiiidraculascursenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
