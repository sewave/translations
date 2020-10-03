@echo off
set T_FILENAME="TR_Fantasy Zone (J).nes"
set SCRIPTNAME="fantasyzonenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8240:20,82B0:10,8350:10,82C0:10
