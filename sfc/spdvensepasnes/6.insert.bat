@echo off
set T_FILENAME="TR_Spider-Man & Venom - Separation Anxiety (U).smc"
set S_FILENAME="Spider-Man & Venom - Separation Anxiety (U).smc"
set SCRIPTNAME="spdvensepasnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
