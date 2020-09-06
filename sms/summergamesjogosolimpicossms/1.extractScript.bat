@echo off
set T_FILENAME="Summer Games ~ Jogos Olimpicos (Europe, Brazil).sms"
set SCRIPTNAME="summergamesjogosolimpicossms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
