@echo off
set T_FILENAME="Dinolympics (USA, Europe).lnx"
set SCRIPTNAME="dinolympicslnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
