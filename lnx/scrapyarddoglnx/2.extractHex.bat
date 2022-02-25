@echo off
set T_FILENAME="TR_Scrapyard Dog (USA, Europe).lnx"
set SCRIPTNAME="scrapyarddoglnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
