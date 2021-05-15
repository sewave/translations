@echo off
set T_FILENAME="TR_aepd.bin"
set SCRIPTNAME="aepdsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
