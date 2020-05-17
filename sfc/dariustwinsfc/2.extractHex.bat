@echo off
set T_FILENAME="TR_Darius Twin (U) [!].smc"
set SCRIPTNAME="dariustwinsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 84580:20,849D0:10,88378:60,CC8B1:B0,88268:70
pause
