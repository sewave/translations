@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gb"
set S_FILENAME="Earthworm Jim (U) [!].gb"
set SCRIPTNAME="earthwormjimgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
