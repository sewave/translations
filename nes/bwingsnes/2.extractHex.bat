@echo off
set T_FILENAME="TR_B-Wings (J) [!].nes"
set SCRIPTNAME="bwingsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
