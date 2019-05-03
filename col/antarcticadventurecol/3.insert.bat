@echo off
set T_FILENAME="TR_Antarctic Adventure (1984) (Konami).col"
set S_FILENAME="Antarctic Adventure (1984) (Konami).col"
set SCRIPTNAME="antarcticadventurecol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
