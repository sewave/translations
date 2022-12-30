@echo off
set T_FILENAME="TR_Speedboat Assassin.tzx"
set SCRIPTNAME="speedboatassassintzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A30D:20,2D15:10,2B85:18
pause
