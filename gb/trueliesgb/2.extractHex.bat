@echo off
set T_FILENAME="TR_True Lies (USA, Europe).gb"
set SCRIPTNAME="trueliesgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B5F:70,8CDF:10
pause
