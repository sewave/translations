@echo off
set T_FILENAME="TR_Mutant League Hockey (USA, Europe).md"
set SCRIPTNAME="mutantleaguehockeysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 686C0:20,68C40:40,14F1A0:20,14F820:40,BFB20:80,BDAC0:40,BE600:40
pause
