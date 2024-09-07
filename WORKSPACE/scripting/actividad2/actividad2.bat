del /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\actividad2\.git"
rd /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\actividad2\.git"
del notas.txt
git init

echo A >> notas.txt
pause
git add notas.txt

git commit -m "+A"

git branch segunda

git checkout -B primera

echo "agrega el 1"
pause

git commit -am "+1"

git checkout segunda

echo "2 >> notas.txt"
pause
git commit -am "+2"

git checkout primera

echo "3 >> notas.txt"
pause

git commit -am "+3"

git checkout segunda

"echo 4 >> notas.txt"
pause
git commit -am "+4"


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

