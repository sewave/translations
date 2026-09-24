@echo off
set T_FILENAME="TR_Shining Force - The Sword of Hajya (USA).gg"
set S_FILENAME="Shining Force - The Sword of Hajya (USA).gg"
set SCRIPTNAME="shiningforcetheswordofhajyagg"
del %T_FILENAME%
REM copy %S_FILENAME% %T_FILENAME%
python insert_all.py
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h tiles_insert.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h title.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h separated_letters.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
pause
