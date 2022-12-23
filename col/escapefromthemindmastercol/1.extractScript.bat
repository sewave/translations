@echo off
set T_FILENAME="Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set SCRIPTNAME="escapefromthemindmastercol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
