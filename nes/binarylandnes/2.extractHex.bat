@echo off
set T_FILENAME="TR_Binary Land (J) [!].nes"
set SCRIPTNAME="binarylandnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5230:10,5620:A0,5720:A0,5BB0:40,5CA0:50,5DA0:50
pause
