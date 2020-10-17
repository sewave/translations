@echo off
set T_FILENAME="TR_Pipe Dream (USA).nes"
set SCRIPTNAME="pipedreamnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EFF0:10,DD10:20,9BD0:20
pause
