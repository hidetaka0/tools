rem winmerge path
set WINMERGE="C:\Program Files\WinMerge\WinMergeU.exe"


rem Working dirctory
set WORKDIR=diff
: filename
set FILE_A=%WORKDIR%\a.txt
set FILE_B=%WORKDIR%\%b.txt

rem Make working directory
mkdir %WORKDIR%

rem Open text files with the default app
start %FILE_A%
start %FILE_B%

start "" %WINMERGE% %FILE_A% %FILE_B%