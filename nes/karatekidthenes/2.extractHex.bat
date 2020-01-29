@echo off
set T_FILENAME="TR_Karate Kid, The (U) [!].nes"
set SCRIPTNAME="karatekidthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9DD0:40,9F00:100,D8F0:10,DDD0:40,DF00:100
pause
