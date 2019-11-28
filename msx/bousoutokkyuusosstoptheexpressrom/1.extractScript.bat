@echo off
set T_FILENAME="Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set SCRIPTNAME="bousoutokkyuusosstoptheexpressrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
