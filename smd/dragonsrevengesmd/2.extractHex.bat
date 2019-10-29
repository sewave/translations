@echo off
set T_FILENAME="TR_Dragon's Revenge (UE) [!].bin"
set SCRIPTNAME="dragonsrevengesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
