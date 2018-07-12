@echo off
set T_FILENAME="TR_Road Fighter (J) [!].nes"
set SCRIPTNAME="roadfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5C0F-600F,4CB0:60,4DB0:60,55AF:10,55C0:40,53E0:30,4710:70
pause
