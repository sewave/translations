@echo off
set T_FILENAME="TR_Q-bert for Game Boy (USA, Europe).gb"
set SCRIPTNAME="qbertforgameboygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
