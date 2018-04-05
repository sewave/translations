set T_FILENAME="Kid Klown (U) [!].nes"
set SCRIPTNAME="kidklown"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 10993-11179-00,1DCA0-1DE0D-0F-00,1E095-1E12A-00,1DC69-1DC70-00
pause