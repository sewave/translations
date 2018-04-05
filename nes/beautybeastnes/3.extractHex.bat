@echo off
set T_FILENAME="TR_Beauty and the Beast (E) [!].nes"
set SCRIPTNAME="beautybeastnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23750:C0
pause
