@echo off
set T_FILENAME="TR_Immortal, The (UE) [!].gen"
set SCRIPTNAME="immortalthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
