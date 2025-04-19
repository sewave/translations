@echo off
set T_FILENAME="TR_Pico Pico (Japan).rom"
set SCRIPTNAME="picopicorom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
