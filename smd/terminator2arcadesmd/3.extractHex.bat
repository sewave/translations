@echo off
set T_FILENAME="TR_T2 - The Arcade Game (UE) (REV01) [!].bin"
set SCRIPTNAME="terminator2arcadesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
