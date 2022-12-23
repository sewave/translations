@echo off
set T_FILENAME="TR_Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set S_FILENAME="Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set SCRIPTNAME="escapefromthemindmastercol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
