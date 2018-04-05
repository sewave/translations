set T_FILENAME="Darkman (U) [!].nes"
set SCRIPTNAME="darkman"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 63E-C6C-FF,1470-14AF-FF,15EB-197F-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%Story.tbl %T_FILENAME% %SCRIPTNAME%Story.txt false 29EC-2CE2-FF,2DC5-30BC-FF,320F-34E9-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Foto.tbl %T_FILENAME% %SCRIPTNAME%Foto.txt false 9591-96D6-FF
pause