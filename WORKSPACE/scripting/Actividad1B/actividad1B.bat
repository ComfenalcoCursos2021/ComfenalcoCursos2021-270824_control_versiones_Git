del /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\Actividad1B\.git"
rd /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\Actividad1B\.git"

git init

del notas.txt

echo A >> notas.txt

git add notas.txt
timeout /t 1
git commit -m "+A cambiando 1.0"

echo 1 >> notas.txt
timeout /t 1
git commit -am "+1"

git branch facebook
git checkout facebook

echo 3 >> notas.txt
timeout /t 1
git commit -am "+3"
echo 5 >> notas.txt
timeout /t 1
git commit -am "+5"

git checkout main

git checkout -B tiktok
echo 7 >> notas.txt
timeout /t 1
git commit -am "+7"

git checkout main 
echo 2 >> notas.txt
timeout /t 1
git commit -am "+8"


git checkout -B main_para_merge
git merge facebook

git log --oneline
git branch