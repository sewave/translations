@echo off
set T_FILENAME="TR_Ikari III - The Rescue (U) [!].nes"
set SCRIPTNAME="ikariiiitherescuenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
