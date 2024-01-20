# Exercises

1. Determine which of the following formulas are tautologies.

   (F => G) /\ (G => F) <=> (F <=> G)
   
   (~F /\ ~G) <=> (~F) \/ (~G)
   
   F => (F => G)
   
   (F => G) <=> (~G => ~F)

   (F => (G => H)) => ((F => G) => H) 

   (F <=> (G <=> H)) => ((F <=> G) <=> H) 
   
   (\A x : F /\ G) <=> (\A x : F)  /\ (\A x : G) 

   (\E x : F /\ G) <=> (\E x : F)  /\ (\E x : G) 
   
   (\A x : F \/ G) <=> (\A x : F)  \/ (\A x : G) 

   (\E x : F \/ G) <=> (\E x : F)  \/ (\E x : G) 
   

2. Which of the following formulas are valid for all sets S, T, and U?

   (S \subseteq T) <=> (S \cup T = T)

   (S \subseteq T) <=> \A x \in S : x \in T
   
   (S = T) <=> (S \subseteq T) /\ (T \subseteq S)

   (S \subseteq T) <=> (S \ T = {})

   (S \ T) \cup (T \ S) = (S \cup T) \ (S \cap T)

   (S \ (T \cap U)) = (S \ T) \cup (S \ U)

# Solutions

1.



