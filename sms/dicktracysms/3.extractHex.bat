@echo off
set T_FILENAME="TR_Dick Tracy (UE) [!].sms"
set SCRIPTNAME="dicktracysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2CACD:400,36DB0:60,3DE10:80
pause
