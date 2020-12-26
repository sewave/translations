@echo off
set T_FILENAME="TR_Dynamite Headdy (USA, Europe).md"
set SCRIPTNAME="dynamiteheaddysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D3A00:100
pause
