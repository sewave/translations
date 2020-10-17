@echo off
set T_FILENAME="TR_Mary Shelley's Frankenstein (USA).md"
set SCRIPTNAME="maryshelleysfrankensteinsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
