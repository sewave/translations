@echo off
set T_FILENAME="TR_Magic Dragon (Unl).nes"
set SCRIPTNAME="magicdragonnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2B070:40,21E90:100,23E90:100,25E90:100,27E90:100,29E90:100,2DE90:100,2FE90:100
pause
