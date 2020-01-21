@echo off
set T_FILENAME="TR_Layla (J) [!].nes"
set SCRIPTNAME="laylanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72D0:40
pause
