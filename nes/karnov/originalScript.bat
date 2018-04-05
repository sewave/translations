set T_FILENAME="Karnov (J) [T+ENG].nes"
set SCRIPTNAME="karnov"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false B199-B65E-02,EF58-F383-02,
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.txt false F04-F0D-FF
pause