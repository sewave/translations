@echo off
set T_FILENAME="TR_The Addams Family (Erbe).tzx"
set SCRIPTNAME="theaddamsfamilytzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
