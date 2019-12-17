@echo off
set T_FILENAME="TR_Candoo Ninja (1983) (Ascii) (J).rom"
set SCRIPTNAME="candooninjarom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D93:10
pause
