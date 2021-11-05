@echo off
set T_FILENAME="Fat Bobby (USA, Europe).lnx"
set SCRIPTNAME="fatbobbylnx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
