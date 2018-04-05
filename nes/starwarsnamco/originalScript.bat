set T_FILENAME="Star Wars (J) (Namco) [T+ENG].nes"
set SCRIPTNAME="starwarsnamco"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 15E02-15F0B-FE,1B585-1B853-FE,1FEA0-1FF9B-FE
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 15DCE-15DEC-FF,122B6-122E7-FF,E2EA-E5AB-FF,159F3-15C04-FF,1F958-1F95F-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt false 1347B-134F3-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt3.tbl %T_FILENAME% %SCRIPTNAME%Alt3.txt false 1F96B-1F972-FF
pause