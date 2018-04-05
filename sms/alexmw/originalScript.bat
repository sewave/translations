set T_FILENAME="Alex Kidd in Miracle World (UE) (V1.1) [!].sms"
set SCRIPTNAME="alexmw"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false  1F117-1FC9C-00-80,F96E-FC5A-FE
pause