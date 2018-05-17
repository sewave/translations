@echo off
set T_FILENAME="TR_Wardner (U) [!].gen"
set S_FILENAME="Wardner (U) [!].gen"
set SCRIPTNAME="wardnersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
