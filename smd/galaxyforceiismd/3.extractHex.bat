@echo off
set T_FILENAME="TR_Galaxy Force II (W) (REV01) [!].gen"
set SCRIPTNAME="galaxyforceiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
