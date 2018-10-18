@echo off
set T_FILENAME="TR_Psycho Fox (UE) [!].sms"
set SCRIPTNAME="psychofoxsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 380E0:80,38340:60,39B40:60,3EB60:40
pause
