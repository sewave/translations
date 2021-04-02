@echo off
set T_FILENAME="TR_Machine Cave(1.19).nes"
set SCRIPTNAME="machinecavenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8580:20,9580:20,
pause
