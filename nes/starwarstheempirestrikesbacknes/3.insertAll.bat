@echo off
set T_FILENAME="TR_Star Wars - The Empire Strikes Back (USA).nes"
set S_FILENAME="Star Wars - The Empire Strikes Back (USA).nes"
set SCRIPTNAME="starwarstheempirestrikesbacknes"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
