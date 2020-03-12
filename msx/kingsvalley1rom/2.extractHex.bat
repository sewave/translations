@echo off
set T_FILENAME="TR_King's Valley 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="kingsvalley1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
