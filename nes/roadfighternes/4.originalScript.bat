@echo off
set T_FILENAME="Road Fighter (J) [!].nes"
set SCRIPTNAME="roadfighternes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
