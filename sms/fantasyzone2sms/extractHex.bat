@echo off 
set T_FILENAME="TR_Fantasy Zone II - The Tears of Opa-Opa (UE) [!].sms"
set SCRIPTNAME="fantasyzone2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
