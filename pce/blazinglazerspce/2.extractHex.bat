@echo off
set T_FILENAME="TR_Blazing Lazers (U).pce"
set SCRIPTNAME="blazinglazerspce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
