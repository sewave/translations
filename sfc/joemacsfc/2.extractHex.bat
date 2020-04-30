@echo off
set T_FILENAME="TR_Joe & Mac (U) [!].smc"
set SCRIPTNAME="joemacsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8F400:40,8F800:40,8FC20:20,90100:20,68600:100,689C0:140
pause
