@echo off
set T_FILENAME="TR_Operation Secret Storm (Color Dreams) [!].nes"
set SCRIPTNAME="operationsecretstormnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F530:A0,1FC10:300,1F220:10,1F280:10
pause
