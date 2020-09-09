@echo off
set T_FILENAME="TR_Orb-3D (USA).nes"
set S_FILENAME="Orb-3D (USA).nes"
set SCRIPTNAME="orb3dnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
