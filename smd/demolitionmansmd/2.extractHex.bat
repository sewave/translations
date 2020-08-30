@echo off
set T_FILENAME="TR_Demolition Man (USA, Europe).md"
set SCRIPTNAME="demolitionmansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7CA18:A0,7CE18:80
pause
