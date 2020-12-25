Martin Escardo, 21-25 December 2020.

We use the argument of the Burali-Forti paradox to show that the
canonical inclusion hSet 𝓤 → hSet (𝓤 ⁺) is not an equivalence, and
neither is the canonical inclusion 𝓤 → 𝓤⁺ of a universe into it
successor, or indeed any universe embedding 𝓤 → 𝓤⁺.

\begin{code}

{-# OPTIONS --without-K --exact-split --safe #-}

open import SpartanMLTT
open import UF-Univalence

module BuraliForti
       (ua : Univalence)
       where

open import OrdinalNotions hiding (_≤_)
open import OrdinalsType
open import OrdinalOfOrdinals ua
open import OrdinalsWellOrderTransport

open import UF-Base
open import UF-Subsingletons
open import UF-Retracts
open import UF-Equiv
open import UF-UniverseEmbedding

\end{code}

Recall that _≃ₒ_ is equivalence of ordinals, defined in the module
OrdinalsType, which means that that there is an equivalence of the
underlying sets that preserves and reflects order.

\begin{code}

Burali-Forti : (α : Ordinal 𝓤 ) → ¬ (α ≃ₒ OrdinalOfOrdinals 𝓤)
Burali-Forti {𝓤} α 𝕗 = γ
 where
  A : Ordinal (𝓤 ⁺)
  A = OrdinalOfOrdinals 𝓤

  a : A ≃ₒ α
  a = ≃ₒ-sym α A 𝕗

  b : α ≃ₒ (A ↓ α)
  b = ordinals-in-O-are-lowersets-of-O α

  c : A ≃ₒ (A ↓ α)
  c = ≃ₒ-trans A α (A ↓ α) a b

  d : A ≡ (A ↓ α)
  d = eqtoidₒ A (A ↓ α) c

  e : A ⊲ A
  e = α , d

  γ : 𝟘
  γ = accessible-points-are-irreflexive _⊲_ A (⊲-is-well-founded A) e

\end{code}

The following cleaner rendering of the above make Agda 2.6.1 (and the
development version 2.6.2 as of 25 December 2020) hang when it reaches
d in the definition of e':

\begin{code}
{-
  𝓐 : Ordinal (𝓤 ⁺ ⁺)
  𝓐 = OrdinalOfOrdinals (𝓤 ⁺)

  e' : A ≺⟨ 𝓐 ⟩ A
  e' = α , d

  γ' : 𝟘
  γ' = irrefl 𝓐 A e
-}

\end{code}

Some corollaries follow.

The main work in the first one happens in the function
transfer-structure, which is developed in the module
OrdinalsWellOrderTransport, where the difficulties are explained.

The type Ordinals 𝓤 of ordinals in the universe 𝓤 lives in the next
universe 𝓤⁺. We say that a type in the successor universe 𝓤⁺ is large
if it is not equivalent to any type in 𝓤:

\begin{code}

is-large : 𝓤 ⁺ ̇ → 𝓤 ⁺ ̇
is-large {𝓤} 𝓧 = ¬ (Σ X ꞉ 𝓤 ̇ , X ≃ 𝓧)

the-type-of-ordinals-is-large : is-large (Ordinal 𝓤)
the-type-of-ordinals-is-large {𝓤} (X , 𝕗) = Burali-Forti (X , pr₁ γ) (pr₂ γ)
 where
  γ : Σ s ꞉ OrdinalStructure X , (X , s) ≃ₒ OrdinalOfOrdinals 𝓤
  γ = transfer-structure fe X (OrdinalOfOrdinals 𝓤)
       𝕗 (_⊲⁻_ , ⊲-is-equivalent-to-⊲⁻)

\end{code}

Recall that Lift-hSet {𝓤} (𝓤 ⁺) is the canonical embedding hSet 𝓤 → hSet 𝓤⁺.

\begin{code}

Lift-hSet-doesnt-have-section : ¬ has-section (Lift-hSet {𝓤} (𝓤 ⁺))
Lift-hSet-doesnt-have-section {𝓤} (s , η) = γ
 where
  X : 𝓤 ̇
  X = pr₁ (s (Ordinal 𝓤 , type-of-ordinals-is-set))

  p : Lift (𝓤 ⁺) X ≡ Ordinal 𝓤
  p = ap pr₁ (η (Ordinal 𝓤 , type-of-ordinals-is-set))

  e : X ≃ Ordinal 𝓤
  e = transport (X ≃_) p (≃-sym (Lift-≃ (𝓤 ⁺) X))

  γ : 𝟘
  γ = the-type-of-ordinals-is-large (X , e)


\end{code}

The following says that the type of sets in 𝓤⁺ is strictly larger than
that of sets in 𝓤:

\begin{code}

Lift-hSet-is-not-equiv : ¬ is-equiv (Lift-hSet {𝓤} (𝓤 ⁺))
Lift-hSet-is-not-equiv {𝓤} e = Lift-hSet-doesnt-have-section
                                (equivs-have-sections (Lift-hSet (𝓤 ⁺)) e)
\end{code}

Recall that a universe embedding is a map f of universes such that
X ≃ f X.  Such maps are automatically embeddings (have singleton
fibers), as shown in the module UF-UniverseEmbeddings.

So the following says that the universe 𝓤⁺ is strictly larger than the
universe 𝓤:

\begin{code}

successive-universe-embeddings-dont-have-sections : (f : 𝓤 ̇ → 𝓤 ⁺ ̇ )
                                                  → is-universe-embedding f
                                                  → ¬ has-section f
successive-universe-embeddings-dont-have-sections {𝓤} f i (s , η) = γ
 where
  X : 𝓤 ̇
  X = s (Ordinal 𝓤)

  p : f X ≡ Ordinal 𝓤
  p = η (Ordinal 𝓤)

  e : X ≃ Ordinal 𝓤
  e = transport (X ≃_) p (≃-sym (i X))

  γ : 𝟘
  γ = the-type-of-ordinals-is-large (X , e)


successive-universe-embeddings-are-not-equivs : (f : 𝓤 ̇ → 𝓤 ⁺ ̇ )
                                              → is-universe-embedding f
                                              → ¬ is-equiv f
successive-universe-embeddings-are-not-equivs f i j =
  successive-universe-embeddings-dont-have-sections f i
   (equivs-have-sections f j)

\end{code}

Recall that Lift {𝓤} (𝓤 ⁺) is the canonical embedding 𝓤 ̇ → 𝓤 ⁺ ̇

\begin{code}

Lift-doesnt-have-section : ¬ has-section (Lift {𝓤} (𝓤 ⁺))
Lift-doesnt-have-section {𝓤} h =
  successive-universe-embeddings-dont-have-sections
   (Lift (𝓤 ⁺)) (λ X → Lift-≃ (𝓤 ⁺) X) h

Lift-is-not-equiv : ¬ is-equiv (Lift {𝓤} (𝓤 ⁺))
Lift-is-not-equiv {𝓤} e = Lift-doesnt-have-section
                           (equivs-have-sections (Lift (𝓤 ⁺)) e)
\end{code}