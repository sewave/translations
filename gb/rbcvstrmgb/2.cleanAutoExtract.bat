@echo off
set T_FILENAME="RoboCop Vs. The Terminator (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
