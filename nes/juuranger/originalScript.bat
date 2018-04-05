set T_FILENAME="Kyouryuu Sentai Juuranger (J) [T+ENG].nes"
set SCRIPTNAME="juuranger"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 16E36-1783D-00-01-02,41F6-42B4-FF,43BD-4452-00,BF34-BF78-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false 8FDD-9DA8-80,45EA-4721-FF
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt false 16B9B-16D4E-00
pause