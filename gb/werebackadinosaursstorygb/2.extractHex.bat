@echo off
set T_FILENAME="TR_We're Back! - A Dinosaur's Story (U) [!].gb"
set SCRIPTNAME="werebackadinosaursstorygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
