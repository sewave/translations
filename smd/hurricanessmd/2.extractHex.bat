@echo off
set T_FILENAME="TR_Hurricanes (Europe).md"
set SCRIPTNAME="hurricanessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
