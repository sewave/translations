@echo off
set T_FILENAME="TR_Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set S_FILENAME="Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set SCRIPTNAME="bousoutokkyuusosstoptheexpressrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
