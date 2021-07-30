@echo off
set T_FILENAME="Lamborghini American Challenge (USA).sfc"
set SCRIPTNAME="lamborghiniamericanchallengesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
