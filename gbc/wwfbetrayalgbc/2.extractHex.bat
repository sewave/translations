@echo off
set T_FILENAME="TR_WWF Betrayal (USA, Europe).gbc"
set SCRIPTNAME="wwfbetrayalgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
