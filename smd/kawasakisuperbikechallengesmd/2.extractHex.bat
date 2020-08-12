@echo off
set T_FILENAME="TR_Kawasaki Superbike Challenge (USA, Europe).md"
set SCRIPTNAME="kawasakisuperbikechallengesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
