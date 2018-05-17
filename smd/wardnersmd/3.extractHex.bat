@echo off
set T_FILENAME="TR_Wardner (U) [!].gen"
set SCRIPTNAME="wardnersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
