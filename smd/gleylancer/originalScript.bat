@echo off 
set T_FILENAME="Gley Lancer (J) [T+ENG].gen"
set SCRIPTNAME="gleylancer"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
