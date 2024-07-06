@echo off
set T_FILENAME="TR_Gunpowder, Treason & Plot.tzx"
set S_FILENAME="Gunpowder, Treason & Plot.tzx"
set SCRIPTNAME="gunpowdertreasonplottzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
