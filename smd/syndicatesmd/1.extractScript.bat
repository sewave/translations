@echo off
set T_FILENAME="Syndicate (USA, Europe) (En,Fr,De).md"
set SCRIPTNAME="syndicatesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
python extract_all.py
pause
