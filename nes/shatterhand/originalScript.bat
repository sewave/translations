set T_FILENAME="Shatterhand (U) [!].nes"
set SCRIPTNAME="shatterhand"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 9A36-9A40-FF,9B41-9B4A-FF,9B99-9BA6-FF,9EDA-9F03-FF,9F66-9F6A-FF,9F74-9F77-FF,9F8F-A014-FF,C330-C483-FF,1FC79-1FD20-20,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 810F-8170-00,C326-C32C-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Select.tbl %T_FILENAME% %SCRIPTNAME%Select.txt false 9C37-9C43-FF
pause