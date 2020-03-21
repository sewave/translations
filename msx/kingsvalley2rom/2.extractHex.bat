@echo off
set T_FILENAME="TR_King's Valley 2 (1988) (Konami) (J).rom"
set SCRIPTNAME="kingsvalley2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
