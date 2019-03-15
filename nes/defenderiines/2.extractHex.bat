@echo off
set T_FILENAME="TR_Defender II (U) [!].nes"
set SCRIPTNAME="defenderiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4290:60,44D0:30,5BC0:10
pause
