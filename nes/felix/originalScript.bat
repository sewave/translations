set T_FILENAME="Felix the Cat (U) [!].nes"
set SCRIPTNAME="felix"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 7CAC-7E31-00,184D7-18524-00,7AD5-7ADC-FF,7C5F-7C66-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 1004C-1005F-FF
pause