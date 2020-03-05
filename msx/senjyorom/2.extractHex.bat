@echo off
set T_FILENAME="TR_Senjyo (1984) (Sony) (J).rom"
set SCRIPTNAME="senjyorom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
