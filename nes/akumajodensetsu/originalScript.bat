set T_FILENAME="Akumajou Densetsu (J) [T+Eng1.0_Vice].nes"
set SCRIPTNAME="akumajodensetsu"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 4A97-4D48-FF,2B968-2BDF6-FF,3DC21-3DFC6-81
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 18A4-18E5-FF,1911-1943-FE,1B5B-1B73-FE-FF,7C42-7C50-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt false 23C01-23DE5-FF
pause