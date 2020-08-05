@echo off
set T_FILENAME="We're Back! - A Dinosaur's Story (USA).sfc"
set SCRIPTNAME="werebackadinosaursstorysfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
