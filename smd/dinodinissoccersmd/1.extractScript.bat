@echo off
set T_FILENAME="Dino Dini's Soccer (Europe).md"
set SCRIPTNAME="dinodinissoccersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
