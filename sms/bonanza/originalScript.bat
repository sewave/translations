set T_FILENAME="Bonanza Bros (E) [!].sms"
set SCRIPTNAME="bonanza"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false D130-D51F-FF,DE28-DF53-FF,E4B0-E551-00,E5CD-E5CF-FF,E72A-E75B-00,E782-E78B-FF,E818-E829-FF,E835-E83A-FF,E90D-E937-00,E984-E995-FF,FA98-FAE5-00,169AD-169D0-FF,1E8BE-1E93D-FF,1F0C4-1F0D4-00,
java -jar Hextractor.jar -a %SCRIPTNAME%Menu.tbl %T_FILENAME% %SCRIPTNAME%Menu.txt false 5781-5826-FF,5895-58BD-FF
pause