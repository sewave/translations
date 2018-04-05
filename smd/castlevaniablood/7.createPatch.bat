@echo off
set T_FILENAME="Castlevania - Bloodlines (U) [T+ESP].gen"
set S_FILENAME="Castlevania - Bloodlines (U) [!].gen"
set SCRIPTNAME="castlevaniablood"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
