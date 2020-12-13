cd\
md LAB6
cd LAB6
wmic os get Caption > wmic_os_get_Caption.txt
wmic os get FreePhysicalMemory > wmic_os_get_FreePhysicalMemory.txt
wmic os get TotalVisibleMemorySize > wmic_os_get_TotalVisibleMemorySize.txt
wmic logicaldisk get name, description > wmic_logicaldisk_get_name_description.txt

md TEST
xcopy C:\LAB6 C:\LAB6\TEST
cd TEST

copy /y /B C:\LAB6\* C:\LAB6\TEST\AllFiles.txt

del /Q C:\LAB6\TEST\wmic_logicaldisk_get_name_description.txt C:\LAB6\TEST\wmic_os_get_Caption.txt C:\LAB6\TEST\wmic_os_get_FreePhysicalMemory.txt C:\LAB6\TEST\wmic_os_get_TotalVisibleMemorySize.txt
