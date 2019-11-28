@echo off
set T_FILENAME="TR_Bousou Tokkyuu SOS. Stop the Express (1985)(Hudson Soft).rom"
set SCRIPTNAME="bousoutokkyuusosstoptheexpressrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
