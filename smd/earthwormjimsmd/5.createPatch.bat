@echo off
set T_FILENAME="TR_Earthworm Jim (U) [!].gen"
set S_FILENAME="Earthworm Jim (U) [!].gen"
set SCRIPTNAME="earthwormjimsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
