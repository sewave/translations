@echo off
set T_FILENAME="Street Fighter II' - Special Champion Edition (USA).md"
set SCRIPTNAME="streetfighteriispecialchampioneditionsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
