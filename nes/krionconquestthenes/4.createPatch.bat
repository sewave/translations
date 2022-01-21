@echo off
set T_FILENAME="TR_Krion Conquest, The (USA).nes"
set S_FILENAME="Krion Conquest, The (USA).nes"
set SCRIPTNAME="krionconquestthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
