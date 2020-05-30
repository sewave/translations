@echo off
set T_FILENAME="TR_X-Men - Mojo World (U) [!].gg"
set SCRIPTNAME="xmenmojoworldgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AB36:20,
pause
