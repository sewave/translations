set T_FILENAME="Jetsons, The - Cogswell's Caper! (U) [!].nes"
set SCRIPTNAME="jetsons"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 21071-21E90-FF,20A90-20AE4-FF,5309-531A-FF,227EE-22802-FF,23062-23585-FF-0A,58B1-58BC-FF
pause