@echo off
set T_FILENAME="TR_Chase.nes"
set SCRIPTNAME="chasenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4A10:480,5A10:480,
pause
