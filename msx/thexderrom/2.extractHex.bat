@echo off
set T_FILENAME="TR_Thexder (1986) (Gamearts) (J).rom"
set SCRIPTNAME="thexderrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
