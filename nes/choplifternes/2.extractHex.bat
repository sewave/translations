@echo off
set T_FILENAME="TR_Choplifter (J) [!].nes"
set SCRIPTNAME="choplifternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9300:10,9510:10
pause
