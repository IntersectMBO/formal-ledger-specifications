{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Algebra.Consequences.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Consequences.Setoid._._Absorbs_
d__Absorbs__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__38 = erased
-- Algebra.Consequences.Setoid._._DistributesOver_
d__DistributesOver__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__40 = erased
-- Algebra.Consequences.Setoid._._DistributesOverʳ_
d__DistributesOver'691'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__42 = erased
-- Algebra.Consequences.Setoid._._DistributesOverˡ_
d__DistributesOver'737'__44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__44 = erased
-- Algebra.Consequences.Setoid._._MiddleFourExchange_
d__MiddleFourExchange__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__MiddleFourExchange__48 = erased
-- Algebra.Consequences.Setoid._.AlmostLeftCancellative
d_AlmostLeftCancellative_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_54 = erased
-- Algebra.Consequences.Setoid._.AlmostRightCancellative
d_AlmostRightCancellative_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_56 = erased
-- Algebra.Consequences.Setoid._.Associative
d_Associative_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_60 = erased
-- Algebra.Consequences.Setoid._.Central
d_Central_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Central_64 = erased
-- Algebra.Consequences.Setoid._.Commutative
d_Commutative_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_66 = erased
-- Algebra.Consequences.Setoid._.Congruent₂
d_Congruent'8322'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_70 = erased
-- Algebra.Consequences.Setoid._.Idempotent
d_Idempotent_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_76 = erased
-- Algebra.Consequences.Setoid._.Identity
d_Identity_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_82 = erased
-- Algebra.Consequences.Setoid._.Inverse
d_Inverse_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_86 = erased
-- Algebra.Consequences.Setoid._.Involutive
d_Involutive_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_90 = erased
-- Algebra.Consequences.Setoid._.LeftCancellative
d_LeftCancellative_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_96 = erased
-- Algebra.Consequences.Setoid._.LeftIdentity
d_LeftIdentity_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_108 = erased
-- Algebra.Consequences.Setoid._.LeftInverse
d_LeftInverse_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_110 = erased
-- Algebra.Consequences.Setoid._.LeftZero
d_LeftZero_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_116 = erased
-- Algebra.Consequences.Setoid._.RightCancellative
d_RightCancellative_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_126 = erased
-- Algebra.Consequences.Setoid._.RightIdentity
d_RightIdentity_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_138 = erased
-- Algebra.Consequences.Setoid._.RightInverse
d_RightInverse_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_140 = erased
-- Algebra.Consequences.Setoid._.RightZero
d_RightZero_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_146 = erased
-- Algebra.Consequences.Setoid._.Selective
d_Selective_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_148 = erased
-- Algebra.Consequences.Setoid._.SelfInverse
d_SelfInverse_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_150 = erased
-- Algebra.Consequences.Setoid._.Zero
d_Zero_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_166 = erased
-- Algebra.Consequences.Setoid.Congruence._.∙-congʳ
d_'8729''45'cong'691'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_216 ~v0 ~v1 v2 ~v3 v4
  = du_'8729''45'cong'691'_216 v2 v4
du_'8729''45'cong'691'_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_216 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid.Congruence._.∙-congˡ
d_'8729''45'cong'737'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_218 ~v0 ~v1 v2 ~v3 v4
  = du_'8729''45'cong'737'_218 v2 v4
du_'8729''45'cong'737'_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_218 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.sel⇒idem
d_sel'8658'idem_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
d_sel'8658'idem_226 ~v0 ~v1 ~v2 ~v3 = du_sel'8658'idem_226
du_sel'8658'idem_226 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny
du_sel'8658'idem_226
  = coe MAlonzo.Code.Algebra.Consequences.Base.du_sel'8658'idem_80
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_238 ~v0 ~v1 v2 ~v3 v4
  = du_'8729''45'cong'691'_238 v2 v4
du_'8729''45'cong'691'_238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_238 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_240 ~v0 ~v1 v2 ~v3 v4
  = du_'8729''45'cong'737'_240 v2 v4
du_'8729''45'cong'737'_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_240 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.comm∧assoc⇒middleFour
d_comm'8743'assoc'8658'middleFour_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8743'assoc'8658'middleFour_242 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
                                      v9 v10
  = du_comm'8743'assoc'8658'middleFour_242
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'8743'assoc'8658'middleFour_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8743'assoc'8658'middleFour_242 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v1 (coe v1 v5 v6) (coe v1 v7 v8))
      (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 (coe v1 v5 v6) (coe v1 v7 v8))
         (coe v1 v5 (coe v1 v6 (coe v1 v7 v8)))
         (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
            (coe v1 v5 (coe v1 v6 (coe v1 v7 v8)))
            (coe v1 v5 (coe v1 (coe v1 v6 v7) v8))
            (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 v5 (coe v1 (coe v1 v6 v7) v8))
               (coe v1 v5 (coe v1 (coe v1 v7 v6) v8))
               (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 v5 (coe v1 (coe v1 v7 v6) v8))
                  (coe v1 v5 (coe v1 v7 (coe v1 v6 v8)))
                  (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                     (coe v1 v5 (coe v1 v7 (coe v1 v6 v8)))
                     (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
                     (coe v1 (coe v1 v5 v7) (coe v1 v6 v8))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                        (coe v1 (coe v1 v5 v7) (coe v1 v6 v8)))
                     (coe v4 v5 v7 (coe v1 v6 v8)))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v2
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                     v5 (coe v1 (coe v1 v7 v6) v8) (coe v1 v7 (coe v1 v6 v8))
                     (coe v4 v7 v6 v8)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v2
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                  v5
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (\ v9 -> coe v1 v9 v8) (\ v9 v10 -> v9) (coe v1 v6 v7)
                     (coe v1 v7 v6))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v9 v10 -> v10) (\ v9 -> coe v1 v9 v8) (coe v1 v6 v7)
                     (coe v1 v7 v6))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v2
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                     v8 (coe v1 v6 v7) (coe v1 v7 v6) (coe v3 v6 v7))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v2
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               v5 (coe v1 (coe v1 v6 v7) v8) (coe v1 v6 (coe v1 v7 v8))
               (coe v4 v6 v7 v8)))
         (coe v4 v5 v6 (coe v1 v7 v8)))
-- Algebra.Consequences.Setoid._.identity∧middleFour⇒assoc
d_identity'8743'middleFour'8658'assoc_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'8743'middleFour'8658'assoc_258 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                          v8 v9 v10
  = du_identity'8743'middleFour'8658'assoc_258
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_identity'8743'middleFour'8658'assoc_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'8743'middleFour'8658'assoc_258 v0 v1 v2 v3 v4 v5 v6 v7
                                           v8
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v11 v12 v13 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v13)
             (coe v1 (coe v1 v6 v7) v8) (coe v1 v6 (coe v1 v7 v8))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                (coe v1 (coe v1 v6 v7) v8) (coe v1 (coe v1 v6 v7) (coe v1 v3 v8))
                (coe v1 v6 (coe v1 v7 v8))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                   (coe v1 (coe v1 v6 v7) (coe v1 v3 v8))
                   (coe v1 (coe v1 v6 v3) (coe v1 v7 v8)) (coe v1 v6 (coe v1 v7 v8))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                      (coe v1 (coe v1 v6 v3) (coe v1 v7 v8)) (coe v1 v6 (coe v1 v7 v8))
                      (coe v1 v6 (coe v1 v7 v8))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                  (coe v0))))
                         (coe v1 v6 (coe v1 v7 v8)))
                      (coe
                         MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v2
                         (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                         (coe v1 v7 v8) (coe v1 v6 v3) v6 (coe v10 v6)))
                   (coe v5 v6 v7 v3 v8))
                (coe
                   MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v2
                   (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                   (coe v1 v6 v7) (coe v1 v3 v8) v8 (coe v9 v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.identity∧middleFour⇒comm
d_identity'8743'middleFour'8658'comm_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_identity'8743'middleFour'8658'comm_278 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                         v8 v9 v10
  = du_identity'8743'middleFour'8658'comm_278
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_identity'8743'middleFour'8658'comm_278 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_identity'8743'middleFour'8658'comm_278 v0 v1 v2 v3 v4 v5 v6 v7
                                          v8
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v11 v12 v13 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v13)
             (coe v1 v7 v8) (coe v1 v8 v7)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                (coe v1 v7 v8) (coe v1 (coe v3 v4 v7) (coe v3 v8 v4))
                (coe v1 v8 v7)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                   (coe v1 (coe v3 v4 v7) (coe v3 v8 v4))
                   (coe v1 (coe v3 v4 v8) (coe v3 v7 v4)) (coe v1 v8 v7)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                      (coe v1 (coe v3 v4 v8) (coe v3 v7 v4)) (coe v1 v8 v7)
                      (coe v1 v8 v7)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                  (coe v0))))
                         (coe v1 v8 v7))
                      (coe
                         v2 (coe v3 v4 v8) v8 (coe v3 v7 v4) v7 (coe v9 v8) (coe v10 v7)))
                   (coe v6 v4 v7 v8 v4))
                (coe
                   v2 (coe v3 v4 v7) v7 (coe v3 v8 v4) v8 (coe v9 v7) (coe v10 v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.selfInverse⇒involutive
d_selfInverse'8658'involutive_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_selfInverse'8658'involutive_302 ~v0 ~v1 v2 v3 v4
  = du_selfInverse'8658'involutive_302 v2 v3 v4
du_selfInverse'8658'involutive_302 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_selfInverse'8658'involutive_302 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_reflexive'8743'selfInverse'8658'involutive_116
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
      (coe v2)
-- Algebra.Consequences.Setoid._.selfInverse⇒congruent
d_selfInverse'8658'congruent_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_selfInverse'8658'congruent_304 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_selfInverse'8658'congruent_304 v2 v3 v4 v5 v6 v7
du_selfInverse'8658'congruent_304 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_selfInverse'8658'congruent_304 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
      (coe v1 v4) (coe v1 v3)
      (coe
         v2 (coe v1 v3) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
            (coe v1 (coe v1 v3)) v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 (coe v1 v3)) v3 v4
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  v3 v4 v4
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v4))
                  v5)
               (coe du_selfInverse'8658'involutive_302 v0 v1 v2 v3))))
-- Algebra.Consequences.Setoid._.selfInverse⇒inverseᵇ
d_selfInverse'8658'inverse'7495'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_selfInverse'8658'inverse'7495'_312 ~v0 ~v1 v2 v3 v4
  = du_selfInverse'8658'inverse'7495'_312 v2 v3 v4
du_selfInverse'8658'inverse'7495'_312 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_selfInverse'8658'inverse'7495'_312 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 v4 v5 ->
            coe
              v2 v3 v4
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                 v4 (coe v1 v3) v5)))
      (coe
         (\ v3 v4 v5 ->
            coe
              v2 v3 v4
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                 v4 (coe v1 v3) v5)))
-- Algebra.Consequences.Setoid._.selfInverse⇒surjective
d_selfInverse'8658'surjective_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_selfInverse'8658'surjective_314 ~v0 ~v1 v2 v3 v4 v5
  = du_selfInverse'8658'surjective_314 v2 v3 v4 v5
du_selfInverse'8658'surjective_314 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_selfInverse'8658'surjective_314 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1 v3)
      (coe
         (\ v4 v5 ->
            coe
              v2 v3 v4
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                 v4 (coe v1 v3) v5)))
-- Algebra.Consequences.Setoid._.selfInverse⇒injective
d_selfInverse'8658'injective_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_selfInverse'8658'injective_318 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_selfInverse'8658'injective_318 v2 v3 v4 v5 v6 v7
du_selfInverse'8658'injective_318 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_selfInverse'8658'injective_318 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      v3 v4
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         v3 (coe v1 (coe v1 v4)) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 (coe v1 v4)) v4 v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v4))
            (coe du_selfInverse'8658'involutive_302 v0 v1 v2 v4))
         (coe v2 v3 (coe v1 v4) v5))
-- Algebra.Consequences.Setoid._.selfInverse⇒bijective
d_selfInverse'8658'bijective_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_selfInverse'8658'bijective_326 ~v0 ~v1 v2 v3 v4
  = du_selfInverse'8658'bijective_326 v2 v3 v4
du_selfInverse'8658'bijective_326 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_selfInverse'8658'bijective_326 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_selfInverse'8658'injective_318 (coe v0) (coe v1) (coe v2))
      (coe du_selfInverse'8658'surjective_314 (coe v0) (coe v1) (coe v2))
-- Algebra.Consequences.Setoid._.comm∧cancelˡ⇒cancelʳ
d_comm'8743'cancel'737''8658'cancel'691'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8743'cancel'737''8658'cancel'691'_336 ~v0 ~v1 v2 v3 v4 v5 v6
                                             v7 v8 v9
  = du_comm'8743'cancel'737''8658'cancel'691'_336
      v2 v3 v4 v5 v6 v7 v8 v9
du_comm'8743'cancel'737''8658'cancel'691'_336 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8743'cancel'737''8658'cancel'691'_336 v0 v1 v2 v3 v4 v5 v6
                                              v7
  = coe
      v3 v4 v5 v6
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v8 v9 v10 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
         (coe v1 v4 v5) (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v4 v5) (coe v1 v5 v4) (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 v5 v4) (coe v1 v6 v4) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 v6 v4) (coe v1 v4 v6) (coe v1 v4 v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 v4 v6))
                  (coe v2 v6 v4))
               v7)
            (coe v2 v4 v5)))
-- Algebra.Consequences.Setoid._.comm∧cancelʳ⇒cancelˡ
d_comm'8743'cancel'691''8658'cancel'737'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8743'cancel'691''8658'cancel'737'_348 ~v0 ~v1 v2 v3 v4 v5 v6
                                             v7 v8 v9
  = du_comm'8743'cancel'691''8658'cancel'737'_348
      v2 v3 v4 v5 v6 v7 v8 v9
du_comm'8743'cancel'691''8658'cancel'737'_348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8743'cancel'691''8658'cancel'737'_348 v0 v1 v2 v3 v4 v5 v6
                                              v7
  = coe
      v3 v4 v5 v6
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v8 v9 v10 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
         (coe v1 v5 v4) (coe v1 v6 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v5 v4) (coe v1 v4 v5) (coe v1 v6 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 v4 v5) (coe v1 v4 v6) (coe v1 v6 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 v4 v6) (coe v1 v6 v4) (coe v1 v6 v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 v6 v4))
                  (coe v2 v4 v6))
               v7)
            (coe v2 v5 v4)))
-- Algebra.Consequences.Setoid._.comm∧idˡ⇒idʳ
d_comm'8743'id'737''8658'id'691'_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'id'737''8658'id'691'_370 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'id'737''8658'id'691'_370 v2 v3 v4 v5 v6 v7
du_comm'8743'id'737''8658'id'691'_370 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'id'737''8658'id'691'_370 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe v1 v5 v3) v5
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v5 v3) (coe v1 v3 v5) v5
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v3 v5) v5 v5
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v5))
            (coe v4 v5))
         (coe v2 v5 v3))
-- Algebra.Consequences.Setoid._.comm∧idʳ⇒idˡ
d_comm'8743'id'691''8658'id'737'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'id'691''8658'id'737'_376 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'id'691''8658'id'737'_376 v2 v3 v4 v5 v6 v7
du_comm'8743'id'691''8658'id'737'_376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'id'691''8658'id'737'_376 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe v1 v3 v5) v5
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v3 v5) (coe v1 v5 v3) v5
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v5 v3) v5 v5
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v5))
            (coe v4 v5))
         (coe v2 v3 v5))
-- Algebra.Consequences.Setoid._.comm∧idˡ⇒id
d_comm'8743'id'737''8658'id_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'id'737''8658'id_382 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_comm'8743'id'737''8658'id_382 v2 v3 v4 v5 v6
du_comm'8743'id'737''8658'id_382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'id'737''8658'id_382 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
      (coe
         du_comm'8743'id'737''8658'id'691'_370 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- Algebra.Consequences.Setoid._.comm∧idʳ⇒id
d_comm'8743'id'691''8658'id_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'id'691''8658'id_386 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_comm'8743'id'691''8658'id_386 v2 v3 v4 v5 v6
du_comm'8743'id'691''8658'id_386 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'id'691''8658'id_386 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_comm'8743'id'691''8658'id'737'_376 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
      (coe v4)
-- Algebra.Consequences.Setoid._.comm∧zeˡ⇒zeʳ
d_comm'8743'ze'737''8658'ze'691'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'ze'737''8658'ze'691'_390 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'ze'737''8658'ze'691'_390 v2 v3 v4 v5 v6 v7
du_comm'8743'ze'737''8658'ze'691'_390 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'ze'737''8658'ze'691'_390 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe v1 v5 v3) v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v5 v3) (coe v1 v3 v5) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v3 v5) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v3))
            (coe v4 v5))
         (coe v2 v5 v3))
-- Algebra.Consequences.Setoid._.comm∧zeʳ⇒zeˡ
d_comm'8743'ze'691''8658'ze'737'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'ze'691''8658'ze'737'_396 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'ze'691''8658'ze'737'_396 v2 v3 v4 v5 v6 v7
du_comm'8743'ze'691''8658'ze'737'_396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'ze'691''8658'ze'737'_396 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe v1 v3 v5) v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v3 v5) (coe v1 v5 v3) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v5 v3) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v3))
            (coe v4 v5))
         (coe v2 v3 v5))
-- Algebra.Consequences.Setoid._.comm∧zeˡ⇒ze
d_comm'8743'ze'737''8658'ze_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'ze'737''8658'ze_402 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_comm'8743'ze'737''8658'ze_402 v2 v3 v4 v5 v6
du_comm'8743'ze'737''8658'ze_402 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'ze'737''8658'ze_402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
      (coe
         du_comm'8743'ze'737''8658'ze'691'_390 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- Algebra.Consequences.Setoid._.comm∧zeʳ⇒ze
d_comm'8743'ze'691''8658'ze_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'ze'691''8658'ze_406 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_comm'8743'ze'691''8658'ze_406 v2 v3 v4 v5 v6
du_comm'8743'ze'691''8658'ze_406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'ze'691''8658'ze_406 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_comm'8743'ze'691''8658'ze'737'_396 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
      (coe v4)
-- Algebra.Consequences.Setoid._.comm∧almostCancelˡ⇒almostCancelʳ
d_comm'8743'almostCancel'737''8658'almostCancel'691'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_comm'8743'almostCancel'737''8658'almostCancel'691'_410 ~v0 ~v1 v2
                                                         v3 v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_comm'8743'almostCancel'737''8658'almostCancel'691'_410
      v2 v3 v4 v6 v7 v8 v9 v10 v11
du_comm'8743'almostCancel'737''8658'almostCancel'691'_410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
du_comm'8743'almostCancel'737''8658'almostCancel'691'_410 v0 v1 v2
                                                          v3 v4 v5 v6 v7 v8
  = coe
      v3 v4 v5 v6 v7
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v9 v10 v11 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
         (coe v1 v4 v5) (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v4 v5) (coe v1 v5 v4) (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 v5 v4) (coe v1 v6 v4) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 v6 v4) (coe v1 v4 v6) (coe v1 v4 v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 v4 v6))
                  (coe v2 v6 v4))
               v8)
            (coe v2 v4 v5)))
-- Algebra.Consequences.Setoid._.comm∧almostCancelʳ⇒almostCancelˡ
d_comm'8743'almostCancel'691''8658'almostCancel'737'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_comm'8743'almostCancel'691''8658'almostCancel'737'_424 ~v0 ~v1 v2
                                                         v3 v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_comm'8743'almostCancel'691''8658'almostCancel'737'_424
      v2 v3 v4 v6 v7 v8 v9 v10 v11
du_comm'8743'almostCancel'691''8658'almostCancel'737'_424 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
du_comm'8743'almostCancel'691''8658'almostCancel'737'_424 v0 v1 v2
                                                          v3 v4 v5 v6 v7 v8
  = coe
      v3 v4 v5 v6 v7
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v9 v10 v11 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
         (coe v1 v5 v4) (coe v1 v6 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v5 v4) (coe v1 v4 v5) (coe v1 v6 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 v4 v5) (coe v1 v4 v6) (coe v1 v6 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 v4 v6) (coe v1 v6 v4) (coe v1 v6 v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 v6 v4))
                  (coe v2 v4 v6))
               v8)
            (coe v2 v5 v4)))
-- Algebra.Consequences.Setoid._.identity⇒central
d_identity'8658'central_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_identity'8658'central_446 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_identity'8658'central_446 v2 v3 v4 v5 v6
du_identity'8658'central_446 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_identity'8658'central_446 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_40
             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
             (coe v1 v2 v4) v4 (coe v1 v4 v2) (coe v5 v4)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                (coe v1 v4 v2) v4 (coe v6 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.zero⇒central
d_zero'8658'central_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_zero'8658'central_454 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_zero'8658'central_454 v2 v3 v4 v5 v6
du_zero'8658'central_454 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_zero'8658'central_454 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_trans_40
             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
             (coe v1 v2 v4) v2 (coe v1 v4 v2) (coe v5 v4)
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                (coe v1 v4 v2) v2 (coe v6 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.comm∧invˡ⇒invʳ
d_comm'8743'inv'737''8658'inv'691'_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'inv'737''8658'inv'691'_474 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_comm'8743'inv'737''8658'inv'691'_474 v2 v3 v4 v5 v6 v7 v8
du_comm'8743'inv'737''8658'inv'691'_474 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'inv'737''8658'inv'691'_474 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      (coe v1 v6 (coe v2 v6)) v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v6 (coe v2 v6)) (coe v1 (coe v2 v6) v6) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 (coe v2 v6) v6) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v3))
            (coe v5 v6))
         (coe v4 v6 (coe v2 v6)))
-- Algebra.Consequences.Setoid._.comm∧invˡ⇒inv
d_comm'8743'inv'737''8658'inv_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'inv'737''8658'inv_480 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'inv'737''8658'inv_480 v2 v3 v4 v5 v6 v7
du_comm'8743'inv'737''8658'inv_480 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'inv'737''8658'inv_480 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
      (coe
         du_comm'8743'inv'737''8658'inv'691'_474 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5))
-- Algebra.Consequences.Setoid._.comm∧invʳ⇒invˡ
d_comm'8743'inv'691''8658'inv'737'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'8743'inv'691''8658'inv'737'_484 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_comm'8743'inv'691''8658'inv'737'_484 v2 v3 v4 v5 v6 v7 v8
du_comm'8743'inv'691''8658'inv'737'_484 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'8743'inv'691''8658'inv'737'_484 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v7 v8 v9 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
      (coe v1 (coe v2 v6) v6) v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 (coe v2 v6) v6) (coe v1 v6 (coe v2 v6)) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v6 (coe v2 v6)) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v3))
            (coe v5 v6))
         (coe v4 (coe v2 v6) v6))
-- Algebra.Consequences.Setoid._.comm∧invʳ⇒inv
d_comm'8743'inv'691''8658'inv_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'inv'691''8658'inv_490 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'inv'691''8658'inv_490 v2 v3 v4 v5 v6 v7
du_comm'8743'inv'691''8658'inv_490 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'inv'691''8658'inv_490 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_comm'8743'inv'691''8658'inv'737'_484 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5))
      (coe v5)
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_508 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_508 v2 v6
du_'8729''45'cong'691'_508 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_508 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_510 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_510 v2 v6
du_'8729''45'cong'737'_510 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_510 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.assoc∧id∧invʳ⇒invˡ-unique
d_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516 ~v0 ~v1
                                                          v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516 v0 v1 v2
                                                           v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v13 v14 v15 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v15)
             v8 (coe v2 v9)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                v8 (coe v1 v8 v3) (coe v2 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                   (coe v1 v8 v3) (coe v1 v8 (coe v1 v9 (coe v2 v9))) (coe v2 v9)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                      (coe v1 v8 (coe v1 v9 (coe v2 v9)))
                      (coe v1 (coe v1 v8 v9) (coe v2 v9)) (coe v2 v9)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                  (coe v0))))
                         (coe v1 (coe v1 v8 v9) (coe v2 v9)) (coe v1 v3 (coe v2 v9))
                         (coe v2 v9)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                     (coe v0))))
                            (coe v1 v3 (coe v2 v9)) (coe v2 v9) (coe v2 v9)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                        (coe v0))))
                               (coe v2 v9))
                            (coe v11 (coe v2 v9)))
                         (coe
                            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v4
                            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                            (coe v2 v9) (coe v1 v8 v9) v3 v10))
                      (coe v5 v8 v9 (coe v2 v9)))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v4
                      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                      v8 (coe v1 v9 (coe v2 v9)) v3 (coe v7 v9)))
                (coe v12 v8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.assoc∧id∧invˡ⇒invʳ-unique
d_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536 ~v0 ~v1
                                                          v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536 v0 v1 v2
                                                           v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v13 v14 v15 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v15)
             v9 (coe v2 v8)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                v9 (coe v1 v3 v9) (coe v2 v8)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                   (coe v1 v3 v9) (coe v1 (coe v1 (coe v2 v8) v8) v9) (coe v2 v8)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                      (coe v1 (coe v1 (coe v2 v8) v8) v9)
                      (coe v1 (coe v2 v8) (coe v1 v8 v9)) (coe v2 v8)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                  (coe v0))))
                         (coe v1 (coe v2 v8) (coe v1 v8 v9)) (coe v1 (coe v2 v8) v3)
                         (coe v2 v8)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                     (coe v0))))
                            (coe v1 (coe v2 v8) v3) (coe v2 v8) (coe v2 v8)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                        (coe v0))))
                               (coe v2 v8))
                            (coe v12 (coe v2 v8)))
                         (coe
                            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v4
                            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                            (coe v2 v8) (coe v1 v8 v9) v3 v10))
                      (coe v5 (coe v2 v8) v8 v9))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v4
                      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                      v9 (coe v1 (coe v2 v8) v8) v3 (coe v7 v8)))
                (coe v11 v9))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_566 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'691'_566 v2 v5
du_'8729''45'cong'691'_566 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_566 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_568 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6
  = du_'8729''45'cong'737'_568 v2 v5
du_'8729''45'cong'737'_568 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_568 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.comm∧distrˡ⇒distrʳ
d_comm'8743'distr'737''8658'distr'691'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8743'distr'737''8658'distr'691'_570 ~v0 ~v1 v2 v3 v4 v5 v6
                                           v7 v8 v9 v10
  = du_comm'8743'distr'737''8658'distr'691'_570
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'8743'distr'737''8658'distr'691'_570 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8743'distr'737''8658'distr'691'_570 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v1 (coe v2 v7 v8) v6) (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 (coe v2 v7 v8) v6) (coe v1 v6 (coe v2 v7 v8))
         (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 v6 (coe v2 v7 v8)) (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
            (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v2 (coe v1 v7 v6) (coe v1 v8 v6)))
               (coe
                  v3 (coe v1 v6 v7) (coe v1 v7 v6) (coe v1 v6 v8) (coe v1 v8 v6)
                  (coe v4 v6 v7) (coe v4 v6 v8)))
            (coe v5 v6 v7 v8))
         (coe v4 (coe v2 v7 v8) v6))
-- Algebra.Consequences.Setoid._.comm∧distrʳ⇒distrˡ
d_comm'8743'distr'691''8658'distr'737'_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8743'distr'691''8658'distr'737'_580 ~v0 ~v1 v2 v3 v4 v5 v6
                                           v7 v8 v9 v10
  = du_comm'8743'distr'691''8658'distr'737'_580
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'8743'distr'691''8658'distr'737'_580 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8743'distr'691''8658'distr'737'_580 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v1 v6 (coe v2 v7 v8)) (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v1 v6 (coe v2 v7 v8)) (coe v1 (coe v2 v7 v8) v6)
         (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 (coe v2 v7 v8) v6) (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
            (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v2 (coe v1 v6 v7) (coe v1 v6 v8)))
               (coe
                  v3 (coe v1 v7 v6) (coe v1 v6 v7) (coe v1 v8 v6) (coe v1 v6 v8)
                  (coe v4 v7 v6) (coe v4 v8 v6)))
            (coe v5 v6 v7 v8))
         (coe v4 v6 (coe v2 v7 v8)))
-- Algebra.Consequences.Setoid._.comm∧distrˡ⇒distr
d_comm'8743'distr'737''8658'distr_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'distr'737''8658'distr_590 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'distr'737''8658'distr_590 v2 v3 v4 v5 v6 v7
du_comm'8743'distr'737''8658'distr_590 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'distr'737''8658'distr_590 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
      (coe
         du_comm'8743'distr'737''8658'distr'691'_570 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5))
-- Algebra.Consequences.Setoid._.comm∧distrʳ⇒distr
d_comm'8743'distr'691''8658'distr_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'8743'distr'691''8658'distr_594 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'8743'distr'691''8658'distr_594 v2 v3 v4 v5 v6 v7
du_comm'8743'distr'691''8658'distr_594 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'8743'distr'691''8658'distr_594 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_comm'8743'distr'691''8658'distr'737'_580 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5))
      (coe v5)
-- Algebra.Consequences.Setoid._.comm⇒sym[distribˡ]
d_comm'8658'sym'91'distrib'737''93'_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658'sym'91'distrib'737''93'_604 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                        v8 v9 v10
  = du_comm'8658'sym'91'distrib'737''93'_604
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'8658'sym'91'distrib'737''93'_604 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658'sym'91'distrib'737''93'_604 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v2 v5 (coe v1 v7 v6)) (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v2 v5 (coe v1 v7 v6)) (coe v2 v5 (coe v1 v6 v7))
         (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v2 v5 (coe v1 v6 v7)) (coe v1 (coe v2 v5 v6) (coe v2 v5 v7))
            (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (coe v1 (coe v2 v5 v6) (coe v2 v5 v7))
               (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
               (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe v1 (coe v2 v5 v7) (coe v2 v5 v6)))
               (coe v4 (coe v2 v5 v6) (coe v2 v5 v7)))
            v8)
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v3
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
            v5 (coe v1 v7 v6) (coe v1 v6 v7) (coe v4 v7 v6)))
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_630 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_'8729''45'cong'691'_630 v2 v5
du_'8729''45'cong'691'_630 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_630 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_632 ~v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_'8729''45'cong'737'_632 v2 v5
du_'8729''45'cong'737'_632 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_632 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.distrib∧absorbs⇒distribˡ
d_distrib'8743'absorbs'8658'distrib'737'_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'8743'absorbs'8658'distrib'737'_634 ~v0 ~v1 v2 v3 v4 v5 v6
                                             v7 v8 v9 v10 v11 v12 v13
  = du_distrib'8743'absorbs'8658'distrib'737'_634
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_distrib'8743'absorbs'8658'distrib'737'_634 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'8743'absorbs'8658'distrib'737'_634 v0 v1 v2 v3 v4 v5 v6
                                              v7 v8 v9 v10 v11
  = case coe v8 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v14 v15 v16 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v16)
             (coe v1 v9 (coe v2 v10 v11))
             (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                (coe v1 v9 (coe v2 v10 v11))
                (coe v1 (coe v1 v9 (coe v2 v9 v10)) (coe v2 v10 v11))
                (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                   (coe v1 (coe v1 v9 (coe v2 v9 v10)) (coe v2 v10 v11))
                   (coe v1 (coe v1 v9 (coe v2 v10 v9)) (coe v2 v10 v11))
                   (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                      (coe v1 (coe v1 v9 (coe v2 v10 v9)) (coe v2 v10 v11))
                      (coe v1 v9 (coe v1 (coe v2 v10 v9) (coe v2 v10 v11)))
                      (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                  (coe v0))))
                         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                         (coe v1 v9 (coe v1 (coe v2 v10 v9) (coe v2 v10 v11)))
                         (coe v1 v9 (coe v2 v10 (coe v1 v9 v11)))
                         (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                     (coe v0))))
                            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                            (coe v1 v9 (coe v2 v10 (coe v1 v9 v11)))
                            (coe v1 (coe v2 v9 (coe v1 v9 v11)) (coe v2 v10 (coe v1 v9 v11)))
                            (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                        (coe v0))))
                               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                     (coe v0)))
                               (coe v1 (coe v2 v9 (coe v1 v9 v11)) (coe v2 v10 (coe v1 v9 v11)))
                               (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                               (coe v2 (coe v1 v9 v10) (coe v1 v9 v11))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                           (coe v0))))
                                  (coe v2 (coe v1 v9 v10) (coe v1 v9 v11)))
                               (coe v13 (coe v1 v9 v11) v9 v10))
                            (coe
                               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v3
                               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                     (coe v0)))
                               (coe v2 v10 (coe v1 v9 v11)) (coe v2 v9 (coe v1 v9 v11)) v9
                               (coe v7 v9 v11)))
                         (coe
                            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v3
                            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                            v9 (coe v2 v10 (coe v1 v9 v11))
                            (coe v1 (coe v2 v10 v9) (coe v2 v10 v11)) (coe v12 v10 v9 v11)))
                      (coe v4 v9 (coe v2 v10 v9) (coe v2 v10 v11)))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v3
                      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                      (coe v2 v10 v11)
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306 (coe v1 v9)
                         (\ v14 v15 -> v14) (coe v2 v9 v10) (coe v2 v10 v9))
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                         (\ v14 v15 -> v15) (coe v1 v9) (coe v2 v9 v10) (coe v2 v10 v9))
                      (coe
                         MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v3
                         (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                         v9 (coe v2 v9 v10) (coe v2 v10 v9) (coe v5 v9 v10))))
                (coe
                   MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v3
                   (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                   (coe v2 v10 v11) (coe v1 v9 (coe v2 v9 v10)) v9 (coe v6 v9 v10)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.binomial-expansion
d_binomial'45'expansion_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_binomial'45'expansion_676 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_binomial'45'expansion_676 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
du_binomial'45'expansion_676 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_binomial'45'expansion_676 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v10 v11 v12 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v12)
      (coe v2 (coe v1 v6 v7) (coe v1 v8 v9))
      (coe
         v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
         (coe v2 v7 v9))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (coe v2 (coe v1 v6 v7) (coe v1 v8 v9))
         (coe v1 (coe v2 v6 (coe v1 v8 v9)) (coe v2 v7 (coe v1 v8 v9)))
         (coe
            v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
            (coe v2 v7 v9))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (coe v1 (coe v2 v6 (coe v1 v8 v9)) (coe v2 v7 (coe v1 v8 v9)))
            (coe
               v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9))
               (coe v1 (coe v2 v7 v8) (coe v2 v7 v9)))
            (coe
               v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
               (coe v2 v7 v9))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               (coe
                  v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9))
                  (coe v1 (coe v2 v7 v8) (coe v2 v7 v9)))
               (coe
                  v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
                  (coe v2 v7 v9))
               (coe
                  v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
                  (coe v2 v7 v9))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (coe
                     v1 (coe v1 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8))
                     (coe v2 v7 v9)))
               (coe
                  v4 (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 v8)
                  (coe v2 v7 v9)))
            (coe
               v3 (coe v2 v6 (coe v1 v8 v9))
               (coe v1 (coe v2 v6 v8) (coe v2 v6 v9)) (coe v2 v7 (coe v1 v8 v9))
               (coe v1 (coe v2 v7 v8) (coe v2 v7 v9))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v6 v8 v9)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v7 v8 v9)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 (coe v1 v8 v9) v6 v7))
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_704 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8
  = du_'8729''45'cong'691'_704 v2 v7
du_'8729''45'cong'691'_704 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_704 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_706 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8
  = du_'8729''45'cong'737'_706 v2 v7
du_'8729''45'cong'737'_706 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_706 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congʳ
d_'8729''45'cong'691'_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_710 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_710 v2 v8
du_'8729''45'cong'691'_710 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_710 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._._.∙-congˡ
d_'8729''45'cong'737'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_712 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_712 v2 v8
du_'8729''45'cong'737'_712 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_712 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
      (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Algebra.Consequences.Setoid._.assoc∧distribʳ∧idʳ∧invʳ⇒zeˡ
d_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714 ~v0
                                                                      ~v1 v2 v3 v4 v5 v6 v7 v8 v9
                                                                      v10 v11 v12 v13
  = du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714 v0
                                                                       v1 v2 v3 v4 v5 v6 v7 v8 v9
                                                                       v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v12 v13 v14 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v14)
      (coe v2 v4 v11) v4
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2 v4 v11) (coe v1 (coe v2 v4 v11) v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
            (coe v1 (coe v2 v4 v11) v4)
            (coe
               v1 (coe v2 v4 v11)
               (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
            v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               (coe
                  v1 (coe v2 v4 v11)
                  (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
               (coe
                  v1 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                  (coe v3 (coe v2 v4 v11)))
               v4
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                  (coe
                     v1 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                     (coe v3 (coe v2 v4 v11)))
                  (coe v1 (coe v2 (coe v1 v4 v4) v11) (coe v3 (coe v2 v4 v11))) v4
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 (coe v2 (coe v1 v4 v4) v11) (coe v3 (coe v2 v4 v11)))
                     (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))) v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                        (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))) v4 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v0))))
                           (coe v4))
                        (coe v10 (coe v2 v4 v11)))
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v5
                        (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                        (coe v3 (coe v2 v4 v11))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (\ v12 -> coe v2 v12 v11) (\ v12 v13 -> v12) (coe v1 v4 v4) v4)
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v12 v13 -> v13) (\ v12 -> coe v2 v12 v11) (coe v1 v4 v4) v4)
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v6
                           (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                           v11 (coe v1 v4 v4) v4 (coe v9 v4))))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v5
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                     (coe v3 (coe v2 v4 v11)) (coe v2 (coe v1 v4 v4) v11)
                     (coe v1 (coe v2 v4 v11) (coe v2 v4 v11)) (coe v8 v11 v4 v4)))
               (coe v7 (coe v2 v4 v11) (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v5
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               (coe v2 v4 v11) (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11)))
               v4 (coe v10 (coe v2 v4 v11))))
         (coe v9 (coe v2 v4 v11)))
-- Algebra.Consequences.Setoid._.assoc∧distribˡ∧idʳ∧invʳ⇒zeʳ
d_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726 ~v0
                                                                      ~v1 v2 v3 v4 v5 v6 v7 v8 v9
                                                                      v10 v11 v12 v13
  = du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726 v0
                                                                       v1 v2 v3 v4 v5 v6 v7 v8 v9
                                                                       v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v12 v13 v14 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v14)
      (coe v2 v11 v4) v4
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2 v11 v4) (coe v1 (coe v2 v11 v4) v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
            (coe v1 (coe v2 v11 v4) v4)
            (coe
               v1 (coe v2 v11 v4)
               (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
            v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               (coe
                  v1 (coe v2 v11 v4)
                  (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
               (coe
                  v1 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                  (coe v3 (coe v2 v11 v4)))
               v4
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                  (coe
                     v1 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                     (coe v3 (coe v2 v11 v4)))
                  (coe v1 (coe v2 v11 (coe v1 v4 v4)) (coe v3 (coe v2 v11 v4))) v4
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                     (coe v1 (coe v2 v11 (coe v1 v4 v4)) (coe v3 (coe v2 v11 v4)))
                     (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))) v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
                        (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))) v4 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v0))))
                           (coe v4))
                        (coe v10 (coe v2 v11 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v5
                        (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                        (coe v3 (coe v2 v11 v4))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306 (coe v2 v11)
                           (\ v12 v13 -> v12) (coe v1 v4 v4) v4)
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v12 v13 -> v13) (coe v2 v11) (coe v1 v4 v4) v4)
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v6
                           (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                           v11 (coe v1 v4 v4) v4 (coe v9 v4))))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46 v5
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                     (coe v3 (coe v2 v11 v4)) (coe v2 v11 (coe v1 v4 v4))
                     (coe v1 (coe v2 v11 v4) (coe v2 v11 v4)) (coe v8 v11 v4 v4)))
               (coe v7 (coe v2 v11 v4) (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42 v5
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
               (coe v2 v11 v4) (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4)))
               v4 (coe v10 (coe v2 v11 v4))))
         (coe v9 (coe v2 v11 v4)))
-- Algebra.Consequences.Setoid._.subst∧comm⇒sym
d_subst'8743'comm'8658'sym_756 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_subst'8743'comm'8658'sym_756 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_subst'8743'comm'8658'sym_756 v2 v3 v4 v5 v6 v7
du_subst'8743'comm'8658'sym_756 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_subst'8743'comm'8658'sym_756 v0 v1 v2 v3 v4 v5
  = coe v2 v1 (coe v0 v4 v5) (coe v0 v5 v4) (coe v3 v4 v5)
-- Algebra.Consequences.Setoid._.wlog
d_wlog_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_wlog_770 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 ~v9 v10
  = du_wlog_770 v4 v5 v6 v7 v10
du_wlog_770 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_wlog_770 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_wlog_804 (coe v4)
      (coe
         (\ v5 v6 ->
            coe v2 v1 (coe v0 v5 v6) (coe v0 v6 v5) (coe v3 v5 v6)))
-- Algebra.Consequences.Setoid.comm+assoc⇒middleFour
d_comm'43'assoc'8658'middleFour_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'assoc'8658'middleFour_774 ~v0 ~v1 v2
  = du_comm'43'assoc'8658'middleFour_774 v2
du_comm'43'assoc'8658'middleFour_774 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'assoc'8658'middleFour_774 v0
  = coe du_comm'8743'assoc'8658'middleFour_242 (coe v0)
-- Algebra.Consequences.Setoid.identity+middleFour⇒assoc
d_identity'43'middleFour'8658'assoc_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'43'middleFour'8658'assoc_776 ~v0 ~v1 v2
  = du_identity'43'middleFour'8658'assoc_776 v2
du_identity'43'middleFour'8658'assoc_776 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'43'middleFour'8658'assoc_776 v0
  = coe du_identity'8743'middleFour'8658'assoc_258 (coe v0)
-- Algebra.Consequences.Setoid.identity+middleFour⇒comm
d_identity'43'middleFour'8658'comm_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_identity'43'middleFour'8658'comm_778 ~v0 ~v1 v2
  = du_identity'43'middleFour'8658'comm_778 v2
du_identity'43'middleFour'8658'comm_778 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_identity'43'middleFour'8658'comm_778 v0
  = coe du_identity'8743'middleFour'8658'comm_278 (coe v0)
-- Algebra.Consequences.Setoid.comm+cancelˡ⇒cancelʳ
d_comm'43'cancel'737''8658'cancel'691'_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'cancel'737''8658'cancel'691'_780 ~v0 ~v1 v2
  = du_comm'43'cancel'737''8658'cancel'691'_780 v2
du_comm'43'cancel'737''8658'cancel'691'_780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'cancel'737''8658'cancel'691'_780 v0
  = coe du_comm'8743'cancel'737''8658'cancel'691'_336 (coe v0)
-- Algebra.Consequences.Setoid.comm+cancelʳ⇒cancelˡ
d_comm'43'cancel'691''8658'cancel'737'_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'cancel'691''8658'cancel'737'_782 ~v0 ~v1 v2
  = du_comm'43'cancel'691''8658'cancel'737'_782 v2
du_comm'43'cancel'691''8658'cancel'737'_782 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'cancel'691''8658'cancel'737'_782 v0
  = coe du_comm'8743'cancel'691''8658'cancel'737'_348 (coe v0)
-- Algebra.Consequences.Setoid.comm+idˡ⇒idʳ
d_comm'43'id'737''8658'id'691'_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'id'737''8658'id'691'_784 ~v0 ~v1 v2
  = du_comm'43'id'737''8658'id'691'_784 v2
du_comm'43'id'737''8658'id'691'_784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'id'737''8658'id'691'_784 v0
  = coe du_comm'8743'id'737''8658'id'691'_370 (coe v0)
-- Algebra.Consequences.Setoid.comm+idʳ⇒idˡ
d_comm'43'id'691''8658'id'737'_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'id'691''8658'id'737'_786 ~v0 ~v1 v2
  = du_comm'43'id'691''8658'id'737'_786 v2
du_comm'43'id'691''8658'id'737'_786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'id'691''8658'id'737'_786 v0
  = coe du_comm'8743'id'691''8658'id'737'_376 (coe v0)
-- Algebra.Consequences.Setoid.comm+zeˡ⇒zeʳ
d_comm'43'ze'737''8658'ze'691'_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'ze'737''8658'ze'691'_788 ~v0 ~v1 v2
  = du_comm'43'ze'737''8658'ze'691'_788 v2
du_comm'43'ze'737''8658'ze'691'_788 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'ze'737''8658'ze'691'_788 v0
  = coe du_comm'8743'ze'737''8658'ze'691'_390 (coe v0)
-- Algebra.Consequences.Setoid.comm+zeʳ⇒zeˡ
d_comm'43'ze'691''8658'ze'737'_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'ze'691''8658'ze'737'_790 ~v0 ~v1 v2
  = du_comm'43'ze'691''8658'ze'737'_790 v2
du_comm'43'ze'691''8658'ze'737'_790 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'ze'691''8658'ze'737'_790 v0
  = coe du_comm'8743'ze'691''8658'ze'737'_396 (coe v0)
-- Algebra.Consequences.Setoid.comm+almostCancelˡ⇒almostCancelʳ
d_comm'43'almostCancel'737''8658'almostCancel'691'_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_comm'43'almostCancel'737''8658'almostCancel'691'_792 ~v0 ~v1 v2
  = du_comm'43'almostCancel'737''8658'almostCancel'691'_792 v2
du_comm'43'almostCancel'737''8658'almostCancel'691'_792 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
du_comm'43'almostCancel'737''8658'almostCancel'691'_792 v0 v1 v2 v3
                                                        v4 v5 v6 v7 v8 v9
  = coe
      du_comm'8743'almostCancel'737''8658'almostCancel'691'_410 (coe v0)
      v1 v2 v4 v5 v6 v7 v8 v9
-- Algebra.Consequences.Setoid.comm+almostCancelʳ⇒almostCancelˡ
d_comm'43'almostCancel'691''8658'almostCancel'737'_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_comm'43'almostCancel'691''8658'almostCancel'737'_794 ~v0 ~v1 v2
  = du_comm'43'almostCancel'691''8658'almostCancel'737'_794 v2
du_comm'43'almostCancel'691''8658'almostCancel'737'_794 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
du_comm'43'almostCancel'691''8658'almostCancel'737'_794 v0 v1 v2 v3
                                                        v4 v5 v6 v7 v8 v9
  = coe
      du_comm'8743'almostCancel'691''8658'almostCancel'737'_424 (coe v0)
      v1 v2 v4 v5 v6 v7 v8 v9
-- Algebra.Consequences.Setoid.comm+invˡ⇒invʳ
d_comm'43'inv'737''8658'inv'691'_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'inv'737''8658'inv'691'_796 ~v0 ~v1 v2
  = du_comm'43'inv'737''8658'inv'691'_796 v2
du_comm'43'inv'737''8658'inv'691'_796 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'inv'737''8658'inv'691'_796 v0
  = coe du_comm'8743'inv'737''8658'inv'691'_474 (coe v0)
-- Algebra.Consequences.Setoid.comm+invʳ⇒invˡ
d_comm'43'inv'691''8658'inv'737'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'inv'691''8658'inv'737'_798 ~v0 ~v1 v2
  = du_comm'43'inv'691''8658'inv'737'_798 v2
du_comm'43'inv'691''8658'inv'737'_798 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'inv'691''8658'inv'737'_798 v0
  = coe du_comm'8743'inv'691''8658'inv'737'_484 (coe v0)
-- Algebra.Consequences.Setoid.comm+invˡ⇒inv
d_comm'43'inv'737''8658'inv_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'43'inv'737''8658'inv_800 ~v0 ~v1 v2
  = du_comm'43'inv'737''8658'inv_800 v2
du_comm'43'inv'737''8658'inv_800 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'43'inv'737''8658'inv_800 v0
  = coe du_comm'8743'inv'737''8658'inv_480 (coe v0)
-- Algebra.Consequences.Setoid.comm+invʳ⇒inv
d_comm'43'inv'691''8658'inv_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_comm'43'inv'691''8658'inv_802 ~v0 ~v1 v2
  = du_comm'43'inv'691''8658'inv_802 v2
du_comm'43'inv'691''8658'inv_802 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_comm'43'inv'691''8658'inv_802 v0
  = coe du_comm'8743'inv'691''8658'inv_490 (coe v0)
-- Algebra.Consequences.Setoid.comm+distrˡ⇒distrʳ
d_comm'43'distr'737''8658'distr'691'_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'distr'737''8658'distr'691'_804 ~v0 ~v1 v2
  = du_comm'43'distr'737''8658'distr'691'_804 v2
du_comm'43'distr'737''8658'distr'691'_804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'distr'737''8658'distr'691'_804 v0
  = coe du_comm'8743'distr'737''8658'distr'691'_570 (coe v0)
-- Algebra.Consequences.Setoid.comm+distrʳ⇒distrˡ
d_comm'43'distr'691''8658'distr'737'_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'distr'691''8658'distr'737'_806 ~v0 ~v1 v2
  = du_comm'43'distr'691''8658'distr'737'_806 v2
du_comm'43'distr'691''8658'distr'737'_806 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'distr'691''8658'distr'737'_806 v0
  = coe du_comm'8743'distr'691''8658'distr'737'_580 (coe v0)
-- Algebra.Consequences.Setoid.assoc+distribʳ+idʳ+invʳ⇒zeˡ
d_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_808 ~v0
                                                                ~v1 v2
  = du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_808
      v2
du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_808 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_808 v0
  = coe
      du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714
      (coe v0)
-- Algebra.Consequences.Setoid.assoc+distribˡ+idʳ+invʳ⇒zeʳ
d_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_810 ~v0
                                                                ~v1 v2
  = du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_810
      v2
du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_810 v0
  = coe
      du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726
      (coe v0)
-- Algebra.Consequences.Setoid.assoc+id+invʳ⇒invˡ-unique
d_assoc'43'id'43'inv'691''8658'inv'737''45'unique_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'43'id'43'inv'691''8658'inv'737''45'unique_812 ~v0 ~v1 v2
  = du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_812 v2
du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_812 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_812 v0
  = coe
      du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516 (coe v0)
-- Algebra.Consequences.Setoid.assoc+id+invˡ⇒invʳ-unique
d_assoc'43'id'43'inv'737''8658'inv'691''45'unique_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'43'id'43'inv'737''8658'inv'691''45'unique_814 ~v0 ~v1 v2
  = du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_814 v2
du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_814 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_814 v0
  = coe
      du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536 (coe v0)
-- Algebra.Consequences.Setoid.subst+comm⇒sym
d_subst'43'comm'8658'sym_816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_subst'43'comm'8658'sym_816 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_subst'43'comm'8658'sym_816 v2 v3 v4 v5 v6 v7
du_subst'43'comm'8658'sym_816 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_subst'43'comm'8658'sym_816 v0 v1 v2 v3 v4 v5
  = coe v2 v1 (coe v0 v4 v5) (coe v0 v5 v4) (coe v3 v4 v5)
