@echo off
set T_FILENAME="TR_1942 (1986) (Ascii) (J).rom"
set SCRIPTNAME="1942rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
