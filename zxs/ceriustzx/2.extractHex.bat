@echo off
set T_FILENAME="TR_Cerius.tzx"
set SCRIPTNAME="ceriustzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A6C1:30,415C:100
pause
