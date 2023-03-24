@echo off
set T_FILENAME="TR_Manic Miner.tzx"
set SCRIPTNAME="manicminertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
