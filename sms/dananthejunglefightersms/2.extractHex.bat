@echo off
set T_FILENAME="TR_Danan - The Jungle Fighter (Europe).sms"
set SCRIPTNAME="dananthejunglefightersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E84D:180,3ED37:140
pause
