@echo off
set T_FILENAME="TR_Boy and His Blob, A - Trouble on Blobolonia (U) [!].nes"
set SCRIPTNAME="boyandhisblobatroubleonblobolonianes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24BF0:200,287A0:200,28E90:70,277E0:300,298D0:200
pause
