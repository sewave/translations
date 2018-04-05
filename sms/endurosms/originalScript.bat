set T_FILENAME="Enduro Racer (UE) [!].sms"
set SCRIPTNAME="endurosms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 44DB-44F7-FF,4854-4874-FF,48C3-48D6-FF,4AE8-50A9-FF,52A9-5366-FF
pause