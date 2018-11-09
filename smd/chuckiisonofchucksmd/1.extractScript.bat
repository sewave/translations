@echo off
set T_FILENAME="Chuck II - Son of Chuck (U) [!].gen"
set SCRIPTNAME="chuckiisonofchucksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
