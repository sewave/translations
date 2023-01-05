@echo off
set T_FILENAME="TR_Nova Blast (1983) (Imagic) [!].col"
set S_FILENAME="Nova Blast (1983) (Imagic) [!].col"
set SCRIPTNAME="novablastcol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
