# Exercises

1. Run TLC on the HourClock specification.


2. Add an error into the specification by modifying HCini to be

     HCini  ==  hr \in (1 .. 11)
     
   and find the error with TLC.


3. (a) Run TLC on the HourClock2 specification to test that specifications
       HC and HC2 are equivalent.  (Hint: The given configuration file
       checks that HC2 implies HC.  Two formulas are equivalent iff
       each implies the other.)  

   (b) Modify the definition of HC2 by changing the definition of HCnxt2
       to
          HCnxt2  ==  hr' = (hr % 11) + 1    

       Use TLC to show that HC2 is then no longer equivalent to HC.
