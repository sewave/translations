set T_FILENAME="Danan the Jungle Fighter (E) [!].sms"
set SCRIPTNAME="danan"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 2C000-2C204-FF,2C205-2E9FE-35,3FD38-3FD5C-FF,3FC04-3FC1B-FF,3FC1C-3FC34-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 3FC3F-3FC9B-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 3FC9C-3FCAE-FF
pause