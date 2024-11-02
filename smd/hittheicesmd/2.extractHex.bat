@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).md"
set SCRIPTNAME="hittheicesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
