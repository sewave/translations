@echo off
set T_FILENAME="TR_Kung-Fu Taigun (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="kungfutaigunrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 31CC:20
pause
