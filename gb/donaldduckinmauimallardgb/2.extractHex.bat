@echo off
set T_FILENAME="TR_Donald Duck in Maui Mallard (U) [!].gb"
set SCRIPTNAME="donaldduckinmauimallardgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
