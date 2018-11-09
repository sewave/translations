@echo off
set T_FILENAME="TR_Chuck II - Son of Chuck (U) [!].gen"
set SCRIPTNAME="chuckiisonofchucksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
