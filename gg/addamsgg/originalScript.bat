set T_FILENAME="Addams Family, The (U) [!].gg"
set SCRIPTNAME="addamsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 65E7-67C7-FF,454B-45F4-FF,7478-76E3-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 2FDE9-2FF8D-00
pause