@echo off
set T_FILENAME="TR_Chaos.tzx"
set SCRIPTNAME="chaostzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 79BF:28,7ABF:28,7CBF:28,7DBF:28,7817:8,7B17:8
pause
