@echo off
set T_FILENAME="TR_Ms. Pac-Man (U) [!].bin"
set SCRIPTNAME="mspacmansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
