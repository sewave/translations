set T_FILENAME="Terminator 2 - Judgment Day (E) [!].sms"
set SCRIPTNAME="t2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 8-2C-FF,3D-5F-FF,2083-208C-FF,2128-2368-FF,43A4-43BA-FF,4631-46DA-FD,470D-4871-FF,4594-45C2-FF,5BC7-5D02-FF,555-5F9-FF,470D-4721-FF,47D-4BF-FF
pause