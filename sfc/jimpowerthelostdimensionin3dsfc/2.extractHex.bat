@echo off
set T_FILENAME="TR_Jim Power - The Lost Dimension in 3D (USA).sfc"
set SCRIPTNAME="jimpowerthelostdimensionin3dsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
