@echo off
set T_FILENAME="TR_WWF King of the Ring (USA, Europe).gb"
set SCRIPTNAME="wwfkingoftheringgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
