set T_FILENAME="Stanley - The Search for Dr. Livingston (U) [!].nes"
set SCRIPTNAME="stanley"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 15324-168C5-24
pause