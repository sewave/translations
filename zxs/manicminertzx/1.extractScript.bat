@echo off
set T_FILENAME="Manic Miner.tzx"
set SCRIPTNAME="manicminertzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
