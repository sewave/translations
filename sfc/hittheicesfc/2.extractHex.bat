@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).sfc"
set SCRIPTNAME="hittheicesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
