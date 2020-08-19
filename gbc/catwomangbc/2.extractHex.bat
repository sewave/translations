@echo off
set T_FILENAME="TR_Catwoman (USA).gbc"
set SCRIPTNAME="catwomangbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
