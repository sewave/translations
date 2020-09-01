@echo off
set T_FILENAME="TR_Xenophobe (USA).nes"
set SCRIPTNAME="xenophobenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21A90:100
pause
