#lang reader "reader.rkt"
,>,>,>,>, Read in input; including a space
<<<<      Return to beginning
[---------- ---------- ---------- ---------- -------->] Turn ascii values to int values
<<<[+]<      Return to (2); turning the value at (3) to a 0

[>>>+<<<-]  Add value at (2) to value at (5)
<
[>>>+<<<-]  Add value at (1) to value at (4)

>>>>        Move to (5)
[->+>+<<]   Move value at (5) to (6) and (7)
>>          Move to (7)
[-<<+>>]    Move value at (7) to (5); 5 and 6 should now hold the ones place

+++++ +++++< Put at 10 in ()

[		COMPARE X gte 10
  >>>+<<      t0p; y
  [
    -         ym
    >>[-]     t0 = 0
    >+        t1p
    <<<       y
  ]
  >>          t0
  [-<+>]      t0 to z
  >           t2
  [ -<<<+>>>] t1 to y
  <<<-        ym
  <-          xm
]

>>      Move to (8)

[       If the ones place (5) is bigger than 10; subtract 10 and add 1 to the 10s place
  -<<<           
  ----- -----
  <+>>>>
]

[-]<[-]<[-]

<<            Move to (4)
[->>+>+<<<]   Move value at (4) to (6) and (7)
>>>           Move to (7)
[-<<<+>>>]    Move value at (7) to (4); 4 and 6 should now hold the ones place

+++++ +++++<   Set (7) to 10

[		COMPARE X gte 10
  >>>+<<      t0p; y
  [
    -         ym
    >>[-]     t0 = 0
    >+        t1p
    <<<       y
  ]
  >>          t0
  [-<+>]      t0 to z
  >           t2
  [ -<<<+>>>] t1 to y
  <<<-        ym
  <-          xm
]

>>          Move to (8)

[   If the 10s place is gte 10; subtract 10 and carry the 1
  -<<<<
  ----- -----
  <+>>>>>
]

<<<<<

OUTPUT
++++++++++ ++++++++++ ++++++++++ ++++++++++ ++++++++.>
++++++++++ ++++++++++ ++++++++++ ++++++++++ ++++++++.>
++++++++++ ++++++++++ ++++++++++ ++++++++++ ++++++++.>
!22 99
