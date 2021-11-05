@echo off
set T_FILENAME="TR_Fat Bobby (USA, Europe).lnx"
set SCRIPTNAME="fatbobbylnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
