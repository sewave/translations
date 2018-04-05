@echo off
set T_FILENAME="TR_Lion King, The (E) [!].sms"
set SCRIPTNAME="lionkingsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8080-817F
pause
