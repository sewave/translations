@echo off
set T_FILENAME="TR_Solomon's Key (U) [!].nes"
set SCRIPTNAME="solomonskeynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D100:10,9100:10,B100:10,F310:50
pause
