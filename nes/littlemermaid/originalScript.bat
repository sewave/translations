set T_FILENAME="Little Mermaid, The (U) [!].nes"
set SCRIPTNAME="littlemermaid"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 352C-3C2E-FF,1B1F9-1B1FD-FF,1B23F-1B244-FF,1B262-1B266-FF,1B2B5-1B2B9-FF,1B2E5-1B302-FF,1B399-1B43A-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 1B100-1B111-FF
pause