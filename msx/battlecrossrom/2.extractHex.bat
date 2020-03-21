@echo off
set T_FILENAME="TR_Battle Cross (1984) (Sony) (J).rom"
set SCRIPTNAME="battlecrossrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
