@echo off
set T_FILENAME="TR_Art of Fighting (U) [!].gen"
set SCRIPTNAME="artfightingsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
