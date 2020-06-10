@echo off
set T_FILENAME="TR_Veigues Tactical Gladiator (U).pce"
set SCRIPTNAME="veiguestacticalgladiatorpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4285C:10,428BC:20,42AAC:10,42ADC:10,42B0C:10
pause
