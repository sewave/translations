@echo off
set T_FILENAME="Dr. Jekyll and Mr. Hyde (U) [!].nes"
set SCRIPTNAME="drjekyllandmrhydenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
