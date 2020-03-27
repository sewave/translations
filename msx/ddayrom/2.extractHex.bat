@echo off
set T_FILENAME="TR_D-Day (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="ddayrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
