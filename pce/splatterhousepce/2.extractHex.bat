@echo off
set T_FILENAME="TR_Splatterhouse (U).pce"
set SCRIPTNAME="splatterhousepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 231A8:200,23588:20,235E8:20
pause
