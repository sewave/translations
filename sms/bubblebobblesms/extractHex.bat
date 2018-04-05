@echo off 
set T_FILENAME="TR_Bubble Bobble (E) [!].sms"
set SCRIPTNAME="bubblebobblesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
