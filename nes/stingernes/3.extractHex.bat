@echo off
set T_FILENAME="TR_Stinger (U) [!].nes"
set SCRIPTNAME="stingernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
