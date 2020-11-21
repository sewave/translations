@echo off
set T_FILENAME="TR_Hugo 2 1-2 (Germany) (GB Compatible).gbc"
set SCRIPTNAME="hugo212gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
