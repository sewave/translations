@echo off
set T_FILENAME="TR_Xevious (U) [!].nes"
set SCRIPTNAME="xeviousnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8240:10,8120:10
pause
