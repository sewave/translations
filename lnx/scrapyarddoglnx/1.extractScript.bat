@echo off
set T_FILENAME="Scrapyard Dog (USA, Europe).lnx"
set SCRIPTNAME="scrapyarddoglnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
