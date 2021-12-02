@echo off
set T_FILENAME="TR_Adventure Island (USA, Europe).gb"
set SCRIPTNAME="adventureislandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 157AA:10,1588A:20,15909:10,170A6:10,15D07:100,15E22:10,15E9F:10,15F03:40,15F73:40,176BB:50,177D8:50,17780:20,1768B:10,17652:10
pause
