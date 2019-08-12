@echo off
set T_FILENAME="TR_Adventures of Tom Sawyer (U) [!].nes"
set SCRIPTNAME="adventuresoftomsawyernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3EB10:100,3EE10:100,3C3B0:30
pause
