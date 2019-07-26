@echo off
set T_FILENAME="TR_Deadly Moves (U) [!].bin"
set SCRIPTNAME="deadlymovessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
