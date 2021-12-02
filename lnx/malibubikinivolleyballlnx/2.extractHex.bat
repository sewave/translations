@echo off
set T_FILENAME="TR_Malibu Bikini Volleyball (USA, Europe).lnx"
set SCRIPTNAME="malibubikinivolleyballlnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
