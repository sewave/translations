@echo off
set T_FILENAME="TR_Ghost Lion (USA).nes"
set S_FILENAME="Ghost Lion (USA).nes"
set SCRIPTNAME="ghostlionnes"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
pause
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl tr_%SCRIPTNAME%Title.ext %T_FILENAME%
pause
