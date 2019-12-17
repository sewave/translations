@echo off
set T_FILENAME="Zexas Limited (1985) (dB-Soft) (J).rom"
set SCRIPTNAME="zexaslimitedrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
