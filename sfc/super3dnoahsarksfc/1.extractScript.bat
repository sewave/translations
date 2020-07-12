@echo off
set T_FILENAME="Super 3D Noah's Ark (USA) (Unl).sfc"
set SCRIPTNAME="super3dnoahsarksfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
