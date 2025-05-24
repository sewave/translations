@echo off
set T_FILENAME="TR_Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set SCRIPTNAME="hollywoodpinballgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7F273:400
pause
