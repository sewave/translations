@echo off
set T_FILENAME="TR_How To Be A Hero.tzx"
set SCRIPTNAME="howtobeaherotzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
