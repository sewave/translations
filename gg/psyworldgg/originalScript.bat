set T_FILENAME="Psychic World (U) [!].gg"
set SCRIPTNAME="psyworldgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 1E930-1EA43-FF,1EF42-1EF85-FF,1F1D9-1F301-FF,1F42E-1F9C8-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false DFD-EB2-FF,1416-1481-FF,3C44-3CA7-FF,
java -jar Hextractor.jar -a %SCRIPTNAME%Talk.tbl %T_FILENAME% %SCRIPTNAME%Talk.txt false 62E5-633F-00
pause