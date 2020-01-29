@echo off
set T_FILENAME="TR_Exerion 2 (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="exerion2rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3774:80
pause
