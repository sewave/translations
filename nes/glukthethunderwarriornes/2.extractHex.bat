@echo off
set T_FILENAME="TR_Gluk the Thunder Warrior (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="glukthethunderwarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21D10:30,35820:A0,35AB0:60,24BE0:70,248F0:50,29C10:90,2A020:A0,3C420:70,39180:20,392B0:40,28EF0:30,23610:50,23810:20,23C10:50,23760:10,3C970:40,3C7A0:10
pause
