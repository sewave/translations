@echo off
set T_FILENAME="Simpsons, The - Escape from Camp Deadly (U) [!].gb"
set SCRIPTNAME="simpsonstheescapefromcampdeadlygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
