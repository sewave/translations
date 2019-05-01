@echo off
set T_FILENAME="TR_Twin Hawk (JE) [!].bin"
set SCRIPTNAME="twinhawksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E400:C20,40280:20,40400:40
pause
