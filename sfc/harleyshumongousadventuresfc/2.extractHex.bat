@echo off
set T_FILENAME="TR_Harley's Humongous Adventure (USA).sfc"
set SCRIPTNAME="harleyshumongousadventuresfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7F0FF:60,289E0:80
pause
