@echo off
set T_FILENAME="TR_Chuck II - Son of Chuck (U) [!].gen"
set S_FILENAME="Chuck II - Son of Chuck (U) [!].gen"
set SCRIPTNAME="chuckiisonofchucksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
