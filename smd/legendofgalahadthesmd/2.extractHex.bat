@echo off
set T_FILENAME="TR_Legend of Galahad, The (USA, Europe).md"
set SCRIPTNAME="legendofgalahadthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EE900:200,EEB60:60,EEEC0:20,EF2C0:40
pause
