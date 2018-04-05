@echo off
set T_FILENAME="Conquest of the Crystal Palace (U) [!].nes"
set SCRIPTNAME="conquestcp"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt F028-F356-FF,DC14-E4A9-00-01-02-03-04-05-06-07-08-09,CDE8-CDF1-FE
java -jar Hextractor.jar -a %SCRIPTNAME%End.tbl %T_FILENAME% %SCRIPTNAME%End.txt 3E37-3FDF-01
pause