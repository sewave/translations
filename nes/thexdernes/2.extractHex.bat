@echo off
set T_FILENAME="TR_Thexder (J) [!].nes"
set SCRIPTNAME="thexdernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
