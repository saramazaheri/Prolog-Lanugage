%Here is some examples for persentation
%fact
food(pizza).
food(pasta).

fruit(apple).
fruit(banana).

iran(tehran, rasht).
iran(shiraz, esfehan).

%class
main :- write('hello, world!').

% so, this is a line comment...

/*
  This is a block comment!
  The following lines are all facts...

*/

%loop
happy(sara).
happy(ali).
with_teacher(sara).

pass_exam(sara) :-
    happy(sara),
    with_teacher(sara).

does_sara_happy :- pass_exam(sara),
    write('if sara pass the exam she is happy with teacher.').



world(X) :- iran(X).
iran(tehran).

%dictionary
university(sara, course(logic, algorithms)).
university(ali, course(logic, data_structure)).

%true or false
vertical(line(point(X, Y), point(X, Y2))).
horizontal(line(point(X, Y), point(X2, Y))).

% X=5 Y=10 Y2=20 yes

parent(ali, zara).
parent(ali, mamad).
parent(ali, sara).

parent(zara, sajad).

parent(fati, reyhane).
parent(fati, vahid).

related(X, Y) :-
    parent(X, Y).

%recursion

double_digit(X, Y) :-
    Y is X*2.
%double_digit(100, Y).

%math random(0,10,X).
% X is abs(-5). X is max(10, 5).

is_even(X) :-
    Y is X//2, X =:= 2 * Y.
%is_even(12).

%input and output
say_hi :-
    write('What is your name? '),
    read(X),
    write('Hi '),
    write(X).

%write your name like this: 'sara'.

count_to_10(10) :- write(10), nl.

count_to_10(X) :-
    write(X), nl,
    Y is X + 1,
    count_to_10(Y).

%count_to_10(5).

count_down(Low, High) :-
    between(Low, High, Y),
    Z is High - Y,
    write(Z), nl.

%count_down(3, 5).

%SaraMazaheri