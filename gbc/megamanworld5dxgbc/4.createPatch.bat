@echo off
set T_FILENAME="TR_Mega Man World 5 DX.gbc"
set S_FILENAME="Mega Man V (USA) (SGB Enhanced).gb"
set SCRIPTNAME="megamanworld5dxgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
