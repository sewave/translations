@echo off
set T_FILENAME="Legendary Axe, The (USA).pce"
set SCRIPTNAME="legendaryaxethepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
