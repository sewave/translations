@echo off
set T_FILENAME="TR_nogoodchoice.nes"
set SCRIPTNAME="nogoodchoicenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
