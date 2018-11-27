@echo off
set T_FILENAME="Legendary Axe II, The (USA).pce"
set SCRIPTNAME="legendaryaxeiithepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
