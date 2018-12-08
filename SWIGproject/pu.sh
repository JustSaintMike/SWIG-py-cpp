#!/bin/bash

#передача интерфейса в модуль swig; генерация swapfoo.py и swapfoo_wrap.c
swig -python swapfoo.i

#компиляция; генерация swapfoo.o и swapfoo_wrap.o
gcc -c swapfoo.c swapfoo_wrap.c -fPIC -I/usr/include -I/usr/include/python3.5 

#объединение объектов и связь ссылок
ld -shared swapfoo.o swapfoo_wrap.o -o _swapfoo.so

cd ~/NetBeansProjects/library2.3
python3 s.py 
