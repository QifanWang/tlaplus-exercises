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

1. 使用 `ASSUME` 语句检验 tautology 但对于 unbounded quantifiers 用 TLC 无法推导。可以看这个[讨论](https://www.reddit.com/r/tlaplus/comments/199qce8/question_about_unbounded_a_in_tla_grammar/)，其推荐 `THEOREM` 语句用 tlaps 进行证明 tautology。但其中证明有与我推理相悖的，如 `(\E x : F /\ G) <=> (\E x : F)  /\ (\E x : G)` 我认为并不是 tautology 但 tlaps 证明是。todo: 我需要阅读后面章节有关tlaps的内容加以求证。

| formula | is tautology? |
| --- | --- |
| `(F => G) /\ (G => F) <=> (F <=> G)` |  √  |
| `(~F /\ ~G) <=> (~F) \/ (~G)` | × |
| `F => (F => G)` | × |
| `(F => G) <=> (~G => ~F)` | √ |
| `(F => (G => H)) => ((F => G) => H)` | × | 
| `(F <=> (G <=> H)) => ((F <=> G) <=> H)` | √ | 
| `(\A x : F /\ G) <=> (\A x : F)  /\ (\A x : G)` | √ |
| `(\E x : F /\ G) <=> (\E x : F)  /\ (\E x : G)` | √ |
| `(\A x : F \/ G) <=> (\A x : F)  \/ (\A x : G)` | √ |
| `(\E x : F \/ G) <=> (\E x : F)  \/ (\E x : G)` | √ |

2. 利用 `SomeSets == SUBSET {a, b, c, d, e}` 模拟 `all sets` 并用 `ASSUME` 进行证明。题目中所有 formulas 对于所有集合都是合法的(valid, 为 true)。
