@echo off
set T_FILENAME="TR_Dream Fighter (Unl).nes"
set S_FILENAME="Dream Fighter (Unl).nes"
set SCRIPTNAME="dreamfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
