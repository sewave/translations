@echo off
set T_FILENAME="TR_Tengen World Cup Soccer (USA, Europe).gg"
set SCRIPTNAME="tengenworldcupsoccergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex EF60:20,F860:A0,C7C0:40,CBA0:20
pause
