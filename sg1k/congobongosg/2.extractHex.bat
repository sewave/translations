@echo off
set T_FILENAME="TR_Congo Bongo (SG-1000).sg"
set SCRIPTNAME="congobongosg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3382:40
pause
