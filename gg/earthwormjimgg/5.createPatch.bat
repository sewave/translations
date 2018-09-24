@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gg"
set S_FILENAME="Earthworm Jim (U) [!].gg"
set SCRIPTNAME="earthwormjimgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
