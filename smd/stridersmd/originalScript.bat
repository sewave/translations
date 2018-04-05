set T_FILENAME="Strider (UE) [!].bin"
set SCRIPTNAME="stridersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 244F4-24B2A-FF,
pause