@echo off
set T_FILENAME="TR_Jumpman Junior (1984) (Epyx).col"
set S_FILENAME="Jumpman Junior (1984) (Epyx).col"
set SCRIPTNAME="jumpmanjuniorcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
