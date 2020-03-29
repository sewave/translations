@echo off
set T_FILENAME="TR_Socket (U) [!].bin"
set SCRIPTNAME="socketsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
