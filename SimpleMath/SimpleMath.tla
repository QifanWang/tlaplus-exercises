----------------------------- MODULE SimpleMath -----------------------------
(* Exercise 1 *) 
CONSTANTS a, b, c, d, e
(* Check propositional logic tautologies by assuming all possible boolean values *)
ASSUME
  \A F, G \in {TRUE, FALSE} : (F => G) /\ (G => F) <=> (F <=> G)

(* If not all possible boolean values suit the formula, that formula is not tautology*)
ASSUME
  ~ \A F, G \in {TRUE, FALSE} : (~F /\ ~G) <=> (~F) \/ (~G)

ASSUME 
  ~ \A F, G \in {TRUE, FALSE} : F => (F => G)
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (F => G) <=> (~G => ~F)
  
ASSUME 
  ~ \A F, G, H \in {TRUE, FALSE} : (F => (G => H)) => ((F => G) => H) 
  
ASSUME 
  \A F, G, H \in {TRUE, FALSE} : (F <=> (G <=> H)) => ((F <=> G) <=> H) 

(*  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\A x : F /\ G) <=> (\A x : F)  /\ (\A x : G)
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\E x \in {F, ~F, G, ~G} : F /\ G) <=> (\E x \in {F, ~F, G, ~G} : F)  /\ (\E x \in {F, ~F, G, ~G} : G)
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\A x \in {} : F \/ G) <=> (\A x \in {} : F)  \/ (\A x \in {} : G)
  
ASSUME
  \A F, G \in {TRUE, FALSE} : (\E x \in {} : F \/ G) <=> (\E x \in {} : F) \/ (\E x \in {} : G)

*)



THEOREM \A F, G \in {TRUE, FALSE} : (F => G) /\ (G => F) <=> (F <=> G) OBVIOUS

THEOREM
  ~ \A F, G \in {TRUE, FALSE} : (~F /\ ~G) <=> (~F) \/ (~G)
OBVIOUS

THEOREM \A F, G \in {TRUE, FALSE} : (\A x : F /\ G) <=> (\A x : F)  /\ (\A x : G) OBVIOUS

THEOREM \A F, G \in {TRUE, FALSE} : (\E x : F /\ G) <=> (\E x : F)  /\ (\E x : G) OBVIOUS

THEOREM \A F, G \in {TRUE, FALSE} : (\A x : F \/ G) <=> (\A x : F)  \/ (\A x : G) OBVIOUS

THEOREM \A F, G \in {TRUE, FALSE} : (\E x : F \/ G) <=> (\E x : F)  \/ (\E x : G) OBVIOUS

(* Exercise 2 *)
SomeSets == SUBSET {a, b, c, d, e}

ASSUME \A S, T \in SomeSets : (S \subseteq T) <=> (S \cup T = T)

ASSUME \A S, T \in SomeSets : (S \subseteq T) <=> \A x \in S : x \in T
   
ASSUME \A S, T \in SomeSets : (S = T) <=> (S \subseteq T) /\ (T \subseteq S)

ASSUME \A S, T \in SomeSets : (S \subseteq T) <=> (S \ T = {})

\*ASSUME \A S, T \in SomeSets : (S \subseteq T) <=> (S \ T # {})

ASSUME \A S, T \in SomeSets : (S \ T) \cup (T \ S) = (S \cup T) \ (S \cap T)

ASSUME \A S, T, U \in SomeSets : (S \ (T \cap U)) = (S \ T) \cup (S \ U)

=============================================================================