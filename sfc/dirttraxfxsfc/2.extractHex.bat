@echo off
set T_FILENAME="TR_Dirt Trax FX (USA).sfc"
set SCRIPTNAME="dirttraxfxsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
