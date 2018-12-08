//модуль интерфейса, схож с .h файлом и содержит в себе инициализацию всех функций и библиотек; можно в качестве функций указать головной .h файл в котором должны быть перечисленны все функции библиотеки

%module swapfoo
%include "cpointer.i"//The cpointer.i module defines macros that can be used to used to generate wrappers around simple C pointers.

%pointer_functions(char*,swap)//Generates a collection of functions for manipulating a pointer type *

 %{
#include "swapfoo.h"
 %}

 //char *swap(char *S);
%include "swapfoo.h";
