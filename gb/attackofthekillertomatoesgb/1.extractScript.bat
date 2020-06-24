@echo off
set T_FILENAME="Attack of the Killer Tomatoes (U) [!].gb"
set SCRIPTNAME="attackofthekillertomatoesgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
