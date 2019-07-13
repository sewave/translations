@echo off
set T_FILENAME="TR_Final Zone (JU) [!].bin"
set SCRIPTNAME="finalzonesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5E1CA:800
pause
