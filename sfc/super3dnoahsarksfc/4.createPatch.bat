@echo off
set T_FILENAME="TR_Super 3D Noah's Ark (USA) (Unl).sfc"
set S_FILENAME="Super 3D Noah's Ark (USA) (Unl).sfc"
set SCRIPTNAME="super3dnoahsarksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
