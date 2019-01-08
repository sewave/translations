@echo off
set T_FILENAME="TR_Castelian (U) [!].nes"
set SCRIPTNAME="casteliannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A120:60
pause
