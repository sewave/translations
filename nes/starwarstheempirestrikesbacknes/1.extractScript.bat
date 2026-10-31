@echo off
set T_FILENAME="Star Wars - The Empire Strikes Back (USA).nes"
set SCRIPTNAME="starwarstheempirestrikesbacknes"
python extract_all.py
REM java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
