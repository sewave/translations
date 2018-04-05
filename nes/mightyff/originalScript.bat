set T_FILENAME="Mighty Final Fight (U) [!].nes"
set SCRIPTNAME="mightyff"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 1B41-1EDC-FF,9D86-A50C-FF,127F0-129AB-FF,9C42-9C4A-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Select.tbl %T_FILENAME% %SCRIPTNAME%Select.txt false 8242-8396-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 8196-81A0-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 9C2F-9D33-FF,15C51-15C55-FF,83FA-841E-FF
pause