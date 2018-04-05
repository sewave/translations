set T_FILENAME="Time Lord (U) [!].nes"
set SCRIPTNAME="timelord"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false CB1F-CD5A-FF,114A6-11659-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false C970-C9BD-FF,1FEBD-1FEE5-FF
pause