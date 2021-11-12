@echo off
set T_FILENAME="Contra III - The Alien Wars (USA).sfc"
set SCRIPTNAME="contraiiithealienwarssfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
