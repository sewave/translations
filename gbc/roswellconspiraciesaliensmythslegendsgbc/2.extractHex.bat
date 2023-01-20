@echo off
set T_FILENAME="TR_Roswell Conspiracies - Aliens, Myths & Legends (USA) (En,Fr,De).gbc"
set SCRIPTNAME="roswellconspiraciesaliensmythslegendsgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 74B3:A0,7583:10,7643:10,7693:10
pause
