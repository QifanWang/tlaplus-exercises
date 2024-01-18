----------------------------- MODULE SimpleMath ----------------------------- 
CONSTANT X

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
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\A x : F /\ G) <=> (\A x : F)  /\ (\A x : G)
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\E x \in {} : F /\ G) <=> (\E x \in {} : F)  /\ (\E x \in {} : G)
  
ASSUME 
  \A F, G \in {TRUE, FALSE} : (\A x \in {} : F \/ G) <=> (\A x \in {} : F)  \/ (\A x \in {} : G)
  
ASSUME
  \A F, G \in {TRUE, FALSE} : (\E x \in {} : F \/ G) <=> (\E x \in {} : F) \/ (\E x \in {} : G)

=============================================================================