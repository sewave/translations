@echo off
set T_FILENAME="TR_Link Dragon (Taiwan) (En) (Unl).md"
set SCRIPTNAME="linkdragonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E7F6:140,127F6:20,221D4:40,27AF8:20
pause
