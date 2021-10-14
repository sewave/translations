@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).gb"
set SCRIPTNAME="druaganotougb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 15815:100,18F7F:80,1A17F:80,1B17F:80,10583:A0,14965:80,170B5:80
pause
