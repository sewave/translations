@echo off
set T_FILENAME="TR_Taz-Mania (World).md"
set SCRIPTNAME="tazmaniasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
