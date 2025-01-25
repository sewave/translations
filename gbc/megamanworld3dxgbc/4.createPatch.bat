@echo off
set T_FILENAME="TR_Mega Man World 3 DX (USA).gbc"
set S_FILENAME="Mega Man III (USA).gb"
set SCRIPTNAME="megamanworld3dxgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
