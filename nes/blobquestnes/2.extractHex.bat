@echo off
set T_FILENAME="TR_BlobQuest.nes"
set SCRIPTNAME="blobquestnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 53EE:100
pause
