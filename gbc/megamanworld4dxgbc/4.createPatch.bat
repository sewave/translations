@echo off
set T_FILENAME="TR_Mega Man World 4 DX.gb"
set S_FILENAME="Mega Man IV (USA).gb"
set SCRIPTNAME="megamanworld4dxgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
