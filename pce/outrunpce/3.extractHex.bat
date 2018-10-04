@echo off
set T_FILENAME="TR_OutRun (J).pce"
set SCRIPTNAME="outrunpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A5E0-1A760,1AB60-1AC00,1AC60-1AE60
pause
