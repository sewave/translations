@echo off
set T_FILENAME="TR_Pirates! Gold (USA).md"
set SCRIPTNAME="piratesgoldsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4F000:C00
pause
