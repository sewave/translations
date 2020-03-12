@echo off
set T_FILENAME="TR_1942 (1986) (Ascii) (J).rom"
set SCRIPTNAME="1942rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 80D0:28,8200:28,81B0:18
pause
