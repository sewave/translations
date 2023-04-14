@echo off
set T_FILENAME="Terra Cognita (1986)(Codemasters).tzx"
set SCRIPTNAME="terracognitatzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
