set T_FILENAME="Legend of Illusion Starring Mickey Mouse (U) [!].sms"
set SCRIPTNAME="legendsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 5B265-5B66A-FF,79AC0-7B952-FB,
pause