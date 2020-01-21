@echo off
set T_FILENAME="TR_Kung-Fu Master (1983) (Mass Tael) (J).rom"
set SCRIPTNAME="kungfumasterrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
