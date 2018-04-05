set T_FILENAME="Dynamite Headdy (B) [!].sms"
set SCRIPTNAME="headdysms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 6A10D-6A8F1-FF,6C35F-6C48B-FF
pause