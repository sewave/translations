@echo off
set T_FILENAME="TR_Rastan Saga II (Japan).pce"
set SCRIPTNAME="rastansaga2pce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 576E0-5779F,57A00-57A5F,57E40-57EBF
pause
