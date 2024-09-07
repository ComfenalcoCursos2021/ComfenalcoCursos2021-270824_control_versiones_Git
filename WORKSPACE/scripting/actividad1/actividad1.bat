del /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\actividad1\.git"
rd /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\actividad1\.git"
del notas.txt
git init

echo A >> notas.txt
git add notas.txt
timeout /t 3
git commit -m "+A"

git branch segunda

git checkout -B primera
timeout /t 3
echo 1 >> notas.txt
timeout /t 3
git commit -am "+1"

git checkout segunda
timeout /t 3
echo 2 >> notas.txt
timeout /t 3
git commit -am "+2"

git checkout primera
timeout /t 3
echo 3 >> notas.txt
timeout /t 3
git commit -am "+3"

git checkout segunda
timeout /t 3
echo 4 >> notas.txt
timeout /t 3
git commit -am "+4"

git checkout primera
timeout /t 3
echo 5 >> notas.txt
timeout /t 3
git commit -am "+5"


git checkout segunda
timeout /t 3
echo 6 >> notas.txt
timeout /t 3
git commit -am "+6"

echo 7 >> notas.txt
timeout /t 3
git commit -am "+7"

git checkout primera
timeout /t 3
echo 8 >> notas.txt
timeout /t 3
git commit -am "+8"

git checkout segunda
timeout /t 3
echo 9 >> notas.txt
timeout /t 3
git commit -am "+9"

git checkout primera
timeout /t 3
echo 10 >> notas.txt
timeout /t 3
git commit -am "+10"

git checkout primera
git log --oneline
git checkout segunda
git log --oneline


git checkout primera
git checkout -B primera_merge_segunda
git merge segunda
pause
git commit -am "arreglando conflictos primera merge segunda"

git checkout segunda 
git checkout -B segunda_merge_primera
git merge primera 
pause
git commit -am "arreglando conflictos segunda merge primera"

git checkout primera_merge_segunda
git log --oneline
git checkout segunda_merge_primera
git log --oneline

