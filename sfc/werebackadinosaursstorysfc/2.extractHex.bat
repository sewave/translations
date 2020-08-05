@echo off
set T_FILENAME="TR_We're Back! - A Dinosaur's Story (USA).sfc"
set SCRIPTNAME="werebackadinosaursstorysfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
