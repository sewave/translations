@echo off
set T_FILENAME="TR_Baby Boomer (Color Dreams) [!].nes"
set SCRIPTNAME="babyboomernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
