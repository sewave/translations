@echo off
set T_FILENAME="TR_Action 52 (Active Enterprises) (REVA) [!].nes"
set SCRIPTNAME="action52nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
