@echo off
set T_FILENAME="TR_Atmo Sphere.nes"
set S_FILENAME="Atmo Sphere.nes"
set SCRIPTNAME="atmospherenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
