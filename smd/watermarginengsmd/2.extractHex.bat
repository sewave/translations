@echo off
set T_FILENAME="TR_Water Margin ENG.bin"
set SCRIPTNAME="watermarginengsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 184BE4:40,184FE4:80
pause
