---
# Front matter
title: "Лабораторная работа 2"
author: "Поляков Арсений Андреевич, НФИбд-03-19"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

<h1 align="center">
<p>РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ 
<p>Факультет физико-математических и естественных наук  
<p>Кафедра прикладной информатики и теории вероятностей
<p>ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №2
<br></br>
<h2  align="right">
<p>дисциплина: Математическое моделирование
<p>Преподователь: Кулябов Дмитрий Сергеевич
<p>Студент: Поляков Арсений Андреевич
<p>Группа: НФИбд-03-19
<br></br>
<br></br>
<h1 align="center">
<p>МОСКВА
<p>2022 г.
</h1>

# **Цель работы** 

Цель данной работы - научиться выполнять построения математических моделей для выбора правильной стратегии при решении задач поиска.

# **Теоретическое введение** 

Scilab — пакет прикладных математических программ, предоставляющий открытое окружение для инженерных (технических) и научных расчётов.

# **Условия задачи**

На море в тумане катер береговой охраны преследует лодку браконьеров. Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии 18 км от катера. Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость катера в 4,9 раза больше скорости браконьерской лодки.

# **Выполнение лабораторной работы** 

Вариант 35

***1 Вывод уравнения движения катера***

Вводим начальные данные и описываем уравнение
Принимаем за t0 = 0, x(лодки)0 = 0 место нахождения лодки браконьеров в момент обнаружения, x(катера)0 = 0 место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.

![photo](Screenshots/1.png "initial data")

Находим расстояние, после которого катер начнет двигаться вокруг полюса: 
Пусть через время t катер и лодка окажутся на одном расстоянии x от полюса. За это время лодка пройдет x, а катер k - x (или k + x, в зависимости от начального положения катера относительно полюса). Время, за которое они пройдут это расстояние, вычисляется как x/v или (k+-x)/nv

![photo](Screenshots/2.png "find x")

После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса удаляясь от него со скоростью лодки v.

Для этого скорость катера раскладываем на две составляющие:
1. радиальная скорость
2. тангенциальная скорость

Радиальная скорость - это скорость, с которой катер удаляется от полюса. Нам нужно, чтобы эта скорость была равна скорости лодки. 
Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. Она равна произведению угловой скорости на радиус

![photo](Screenshots/4.png "diagram")

Решение исходной задачи сводится к решению системы из двух
дифференциальных уравнений:

![photo](Screenshots/3.png "equation")

С двумя начальными условиями, зависящими от изначального расположения лодки относительно полюса

![photo](Screenshots/5.png "Initial conditions")




***2 Построение траектории движения катера***

Вводим первые начальные условия 

![photo](Screenshots/6.png "1 vars")

Получаем график:

![photo](Screenshots/7.png "1 draphic") 

Вводим вторые начальные условия

![photo](Screenshots/8.png "2 vars")

Получаем график:

![photo](Screenshots/9.png "2 draphic")

***3 Нахождение точки пересечения траекторий***

Аналитически можем увидеть точку пересечения катера и лодки на 1 графике:
Это точка (6,7866; -6,7866)

![photo](Screenshots/10.png "1 point")

И на втором графике:
Это точка (19,76; 19,76)

![photo](Screenshots/11.png "2 point")


# Выводы

Благодаря данной лабораторной работе я научился выполнять построения математических моделей для выбора правильной стратегии при решении задач поиска.

# Список литературы

1. Кулябов, Д.С. Лабораторная работа №2 [Текст] / Д.С.Кулябов. - Москва: - 4 с.



























    







    


