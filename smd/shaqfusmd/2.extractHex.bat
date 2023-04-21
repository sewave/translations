@echo off
set T_FILENAME="TR_Shaq-Fu (USA, Europe).md"
set SCRIPTNAME="shaqfusmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
