@echo off 
set T_FILENAME="Hang-On (E) [!].sms"
set SCRIPTNAME="hangonsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
