@echo off
set T_FILENAME="TR_Mutant League Hockey (USA, Europe).md"
set S_FILENAME="Mutant League Hockey (USA, Europe).md"
set SCRIPTNAME="mutantleaguehockeysmd"
del %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
