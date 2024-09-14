del /s /q .git
rd /s /q .git


del notas.txt
del .gitignore

REM CON LA CONFIGURACION ACTUAL DE GIT LA RAMA PRINCIPAL RECIBE EL NOMBRE DE (main)
REM PARA CAMBIAR EL NOMBRE DE LA RAMA PRINCIPAL SE USARIA (git branch -M main)
git init 
git branch -M main

echo *.bat >> .gitignore

git add .gitignore
git commit -m "Inicial"
REM LA RAMA GENERALMENTE LLAMADA [dev], DONDE ESTA TODO LO NUEVO Y LAS MEJORAS
git branch desarrollo 
REM LA RAMA GENERALMENTE SE LLAMA [qa], DONDE ESTA VERSION ESTABLE DE DESARRALLO
git branch pruebas 
REM LA RAMA GENERALMENTE SE LLAMA [preprod], DONDE ESTA VERSION ESTABLE DE DESARRALLO
git branch preproduccion 
REM LA RAMA GENERALMENTE SE LLAMA [prod], DONDE ESTA LO QUE EL EQUIPO DE PRUEBAS YA PROBO Y TIENE EL AVAL DE QUE EL USUARIO FINAL LO PUEDA VER
git branch produccion 

git checkout desarrollo
echo sumar(a,b) >> notas.txt

git add notas.txt
git commit -m "funcion sumar"


echo restar(a,b) >> notas.txt
git add notas.txt
git commit -m "funcion restar"


git checkout pruebas
git merge desarrollo 

git checkout desarrollo

echo dividir(a,b) >> notas.txt
git add notas.txt
git commit -m "funcion dividir"

git checkout preproduccion
git merge pruebas

git checkout desarrollo

echo multiplicar(a,b) >> notas.txt
git add notas.txt
git commit -m "funcion multiplicar"

git checkout produccion
git merge preproduccion

git checkout pruebas
git merge desarrollo

git checkout preproduccion
git merge pruebas

git checkout produccion
git merge preproduccion



