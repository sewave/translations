@echo off
set T_FILENAME="High Seas Havoc (USA) (En,Ja).md"
set SCRIPTNAME="highseashavocsmd"
REM java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
python tools/extract_all.py
pause
