@echo off
set T_FILENAME="TR_David Crane's A Boy and His Blob - Trouble on Blobolonia (USA).nes"
set SCRIPTNAME="aboyandhisblobnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24BF0:200,287A0:200,28E90:70,277E0:300,298D0:200,24080:10,24140:20,247A0:300
pause
