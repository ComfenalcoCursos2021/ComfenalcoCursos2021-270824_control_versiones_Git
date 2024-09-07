del /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\Actividad2B\.git"
rd /s /q "D:\WORKSPACE\WORKSPACE_GIT\270824\WORKSPACE\scripting\Actividad2B\.git"

git init

del notas.txt

echo A >> notas.txt

git add notas.txt
timeout /t 1
timeout /t 1
git commit -m "+A"

git branch primera
git branch segunda

timeout /t 3
git checkout primera
echo 1 >> notas.txt
timeout /t 1
git commit -am "+1"


timeout /t 3
git checkout segunda
echo 2 >> notas.txt
timeout /t 1
git commit -am "+2"

timeout /t 3
git checkout primera
echo 3 >> notas.txt
timeout /t 1
git commit -am "+3"

timeout /t 3
git checkout segunda
echo 4 >> notas.txt
timeout /t 1
git commit -am "+4"

timeout /t 3
git checkout primera
echo 5 >> notas.txt
timeout /t 1
git commit -am "+5"

timeout /t 3
git checkout segunda
echo 6 >> notas.txt
timeout /t 1
git commit -am "+6"
echo 7 >> notas.txt
timeout /t 1
git commit -am "+7"

timeout /t 3
git checkout primera
echo 8 >> notas.txt
timeout /t 1
git commit -am "+8"

timeout /t 3
git checkout segunda
echo 9 >> notas.txt
timeout /t 1
git commit -am "+9"

timeout /t 3
git checkout primera
echo 10 >> notas.txt
timeout /t 1
git commit -am "+10"



timeout /t 3
git checkout primera
git log --oneline
timeout /t 3
git checkout segunda
git log --oneline