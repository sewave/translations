@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (J) (V1.4) [!].nes"
set SCRIPTNAME="yiearkungfunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E20:10
pause
