@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gen"
set SCRIPTNAME="earthwormjimsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
