install chocolatey and git, and msys2
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) 
choco install git
choco install msys2

then 

msys2_shell.cmd -mingw64

mkdir -p /c/other-projects
cd /c/other-projects
/c/Program\ Files/Git/bin/git clone https://github.com/amirrajan/emacs.git
cd ./emacs
/c/Program\ Files/Git/bin/git config core.autocrlf false
