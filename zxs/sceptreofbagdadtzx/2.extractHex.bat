@echo off
set T_FILENAME="TR_Sceptre Of Bagdad.tzx"
set SCRIPTNAME="sceptreofbagdadtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 71D6:8,70EE:18,710E:28,71B6:8
pause
