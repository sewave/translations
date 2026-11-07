@echo off
set T_FILENAME="Mutant League Hockey (USA, Europe).md"
set SCRIPTNAME="mutantleaguehockeysmd"
python extract_all.py
REM java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
