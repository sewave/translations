set T_FILENAME="Shadow of the Ninja (U) [!].nes"
set SCRIPTNAME="shadowninja"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false F776-FA51-00
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false F6D8-F75A-FF,BDA6-BF58-FF,1A-27-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.txt false F0EA-F0FB-FF 
pause