@echo off
set T_FILENAME="TR_Hydlide (U) [!].nes"
set SCRIPTNAME="hydlidenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
