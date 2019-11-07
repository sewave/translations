@echo off
set T_FILENAME="TR_Guerra del golfo, La (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="guerradelgolfolanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2E0F0:70,36F10:50,376D0:10,37FF0:10,38FA0:60,3AE10:60,39D70:80,39F70:80,33770:70
pause
