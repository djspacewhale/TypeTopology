Martin Escardo, 1st January 2022

Almost all modules. We comment out the unsafe one, the ones that
depend on the cubical library, and the ones that cause circularity
when this is imported from index.lagda and AllModulesIndex.

This is automatically generated, with the modules mentioned above
excluded manually.

\begin{code}

{-# OPTIONS --without-K --exact-split --safe --auto-inline #-}

module everything-safe where

import ADecidableQuantificationOverTheNaturals
import AdjointFunctorTheoremForFrames
-- import AllModulesIndex
import AlternativePlus
import ArithmeticViaEquivalence
import BanachFixedPointTheorem
import BasicDiscontinuityTaboo
import BinaryNaturals
import BuraliForti
import CanonicalMapNotation
-- import CantorCompact
import CantorSchroederBernstein
import CantorSchroederBernstein-TheoryLabLunch
import CantorSearch
import CircleConstruction
import CircleInduction
import CircleModules
import Closeness
import Compactness
import CompactRegular
import CompactTypes
import CoNaturalsArithmetic
import CoNaturalsExercise
import CoNaturals
import ConvergentSequenceCompact
import ConvergentSequenceHasInf
-- import CountableTychonoff
-- import CubicalBinarySystem
import DcpoBilimits
import DcpoBilimitsSequential
import DcpoDinfinity
import DcpoExponential
import Dcpo
import DcpoLeastFixedPoint
import DcpoLifting
import DcpoMiscelanea
import DcpoPCFCombinators
import Dcpos
import DecidabilityOfNonContinuity
import DecidableAndDetachable
import Dedekind
import Density
import DisconnectedTypes
import DiscreteAndSeparated
import Dominance
import DummettDisjunction
import Dyadic
import DyadicOrder
import DyadicOrder-PropTrunc
import Dyadics
import Empty
import Empty-Type
import Escardo-Simpson-LICS2001
-- import everything
-- import everything-safe
import ExtendedSumCompact
import FailureOfTotalSeparatedness
import FiniteHistoryDependentGames
import Finiteness-Universe-Invariance
import Fin
import Fin-Properties
import Frame
import Frame-version1
import FreeGroup
import FreeGroupOfLargeLocallySmallSet
import FreeJoinSemiLattice
import FreeSupLattice
import GaloisConnection
import GeneralNotation
import GenericConvergentSequence
import Groups
import HeytingImplication
import HiggsInvolutionTheorem
import Identity-Type
import Id
-- import index
import InfProperty
import InitialBinarySystem2
import InitialBinarySystem
import InitialFrame
import InjectiveTypes-article
import InjectiveTypes
import Integers
import Integers-Properties
import Integers-SymmetricInduction
import JoinSemiLattices
import LawvereFPT
import LexicographicCompactness
import LexicographicOrder
import LiftingAlgebras
import LiftingEmbeddingDirectly
import LiftingEmbeddingViaSIP
import LiftingIdentityViaSIP
import Lifting
import LiftingMiscelanea
import LiftingMiscelanea-PropExt-FunExt
import LiftingMonad
import LiftingMonadVariation
import LiftingSet
import LiftingSize
import LiftingUnivalentPrecategory
import List
import LPO
import Lumsdaine
import MGS-Basic-UF
import MGS-Choice
import MGS-Classifiers
import MGS-Embeddings
import MGS-Equivalence-Constructions
import MGS-Equivalence-Induction
import MGS-Equivalences
import MGS-Function-Graphs
import MGS-FunExt-from-Univalence
import MGS-HAE
import MGS-hlevels
import MGS
import MGS-Map-Classifiers
import MGS-MLTT
import MGS-More-Exercise-Solutions
import MGS-More-FunExt-Consequences
import MGS-Partial-Functions
import MGS-Powerset
import MGS-Quotient
import MGS-Retracts
import MGS-SIP
import MGS-Size
import MGS-Solved-Exercises
import MGS-Subsingleton-Theorems
import MGS-Subsingleton-Truncation
import MGS-TypeTopology-Interface
import MGS-Unique-Existence
import MGS-Univalence
import MGS-Universe-Lifting
import MGS-Yoneda
import NaturalNumbers
import NaturalNumbers-Properties
import Natural-Numbers-Type
import NaturalNumbers-UniversalProperty
import NaturalsAddition
import NaturalsOrder
import Negation
import NonCollapsibleFamily
import NonSpartanMLTTTypes
import Nucleus
import OrderNotation
import OrdinalArithmetic
import OrdinalArithmetic-Properties
import OrdinalCodes
import OrdinalNotationInterpretation0
import OrdinalNotationInterpretation1
import OrdinalNotationInterpretation2
import OrdinalNotationInterpretation
import OrdinalNotions
import OrdinalOfOrdinals
import OrdinalOfOrdinalsSuprema
import OrdinalOfTruthValues
import OrdinalsClosure
import OrdinalsFreeGroup
import Ordinals
import OrdinalsShulmanTaboo
import OrdinalsSupSum
import OrdinalsToppedType
import OrdinalsType-Injectivity
import OrdinalsTrichotomousType
import OrdinalsType
import OrdinalsWellOrderArithmetic
import OrdinalsWellOrderTransport
import OrdinalTaboos
import OrdinalTrichotomousArithmetic
import OrdinalToppedArithmetic
import P2
import PairFun
import PartialElements
import PatchLocale
import PCF
import PCFModules
import Pi
import Plus
import PlusNotation
import PlusOneLC
import Plus-Properties
import Plus-Type
import Poset
import PropInfTychonoff
import PropTychonoff
import QuasiDecidable
import RicesTheoremForTheUniverse
import RootsTruncation
import ScottModelOfPCF
import SemiDecidable
import Sequence
import SigmaDiscreteAndTotallySeparated
import sigma-frame
import Sigma
import sigma-sup-lattice
import Sigma-Type
import SimpleTypes
import SliceAlgebras
import SliceEmbedding
import SliceIdentityViaSIP
import Slice
import SliceMonad
import SpartanMLTT
import SpartanMLTT-List
import SquashedCantor
import SquashedSum
import SRTclosure
import Swap
import TheTopologyOfTheUniverse
import TotallySeparated
import TotalSeparatedness
import Two
import Two-Properties
-- import Type-in-Type-False
import Types2019
import UF-Base
import UF-Choice
import UF-Classifiers
import UF-Classifiers-Old
import UF-Connected
import UF-Embeddings
import UF-EquivalenceExamples
import UF-Equiv-FunExt
import UF-Equiv
import UF-ExcludedMiddle
import UF-Factorial
import UF-FunExt-from-Naive-FunExt
import UF-FunExt
import UF-FunExt-Properties
import UF-hlevels
import UF-IdEmbedding
import UF-ImageAndSurjection-F
import UF-ImageAndSurjection
import UF-Knapp-UA
import UF-KrausLemma
import UF-Large-Quotient
import UF-LeftCancellable
import UF-Lower-FunExt
import UF-Miscelanea
import UF-Powerset-Fin
import UF-Powerset
import UF-PropIndexedPiSigma
import UF-PropTrunc-F
import UF-PropTrunc
import UF-Quotient-F
import UF-Quotient
import UF-Quotient-Replacement
import UF-Retracts-FunExt
import UF-Retracts
import UF-Section-Embedding
import UF-SIP-Examples
import UF-SIP-IntervalObject
import UF-SIP
import UF-Size
import UF-StructureIdentityPrinciple
import UF-Subsingleton-Combinators
import UF-Subsingletons-FunExt
import UF-Subsingletons
import UF-UA-FunExt
import UF-Univalence
import UF-UniverseEmbedding
import UF-Yoneda
import Unit
import Unit-Properties
import Unit-Type
import UnivalenceFromScratch
import Universes
-- import UnsafeModulesIndex
import WeaklyCompactTypes
import WellOrderingTaboo
import W
import WLPO
import W-Properties

\end{code}
