@echo off
set T_FILENAME="TR_Firehawk (USA) (Unl).nes"
set SCRIPTNAME="firehawknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
