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

module MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Product.Relation.Binary.Lex.Strict.×-Lex
d_'215''45'Lex_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_'215''45'Lex_34 = erased
-- Data.Product.Relation.Binary.Lex.Strict.×-reflexive
d_'215''45'reflexive_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'reflexive_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 v12 v13 v14 v15
  = du_'215''45'reflexive_50 v12 v13 v14 v15
du_'215''45'reflexive_50 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'reflexive_50 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
         (coe
            v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
-- Data.Product.Relation.Binary.Lex.Strict._._<ₗₑₓ_
d__'60''8343''8337''8339'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'60''8343''8337''8339'__76 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-transitive
d_'215''45'transitive_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'transitive_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10 v11 v12 v13 v14 v15 v16
  = du_'215''45'transitive_78 v10 v11 v12 v13 v14 v15 v16
du_'215''45'transitive_78 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'transitive_78 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_trans_104 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
      (coe v6)
-- Data.Product.Relation.Binary.Lex.Strict._._.trans
d_trans_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_trans_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 v12 v13
            ~v14 ~v15 ~v16 v17 v18 v19 v20 v21
  = du_trans_104 v10 v11 v12 v13 v17 v18 v19 v20 v21
du_trans_104 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_trans_104 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe
                       v2
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                          (\ v11 v12 -> v11) v4 v5)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v4
                          v5)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v5
                          v6)
                       v9 v10)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                          (\ v11 v12 -> v11) v4 v5)
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                          (\ v11 v12 -> v11) v5 v6)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v5
                          v6)
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)) v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
        -> case coe v8 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v5
                          v6)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12)
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v4
                          v5)
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                          (\ v11 v12 -> v11) v4 v5)
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_sym_38 v0
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                             (\ v11 v12 -> v11) v4 v5)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v4
                             v5)
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                       v10)
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_trans_40 v0
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                             (\ v11 v12 -> v11) v4 v5)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v4
                             v5)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)) v5
                             v6)
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                       (coe
                          v3
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))
                             (\ v11 v12 -> v11) v4 v5)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11)) v4
                             v5)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v11 v12 -> v12)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11)) v5
                             v6)
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                          (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Product.Relation.Binary.Lex.Strict._.×-asymmetric
d_'215''45'asymmetric_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'215''45'asymmetric_122 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._.irrefl₁
d_irrefl'8321'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl'8321'_136 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._.asym
d_asym_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_138 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-total₁
d_'215''45'total'8321'_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'total'8321'_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10 v11 v12
  = du_'215''45'total'8321'_156 v10 v11 v12
du_'215''45'total'8321'_156 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'total'8321'_156 v0 v1 v2
  = let v3
          = coe
              v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Product.Relation.Binary.Lex.Strict._.×-total₂
d_'215''45'total'8322'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'total'8322'_184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           v10 v11 v12 v13 v14
  = du_'215''45'total'8322'_184 v10 v11 v12 v13 v14
du_'215''45'total'8322'_184 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'total'8322'_184 v0 v1 v2 v3 v4
  = let v5
          = coe
              v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v6))
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
           -> let v9
                    = coe
                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)) in
              coe
                (case coe v9 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                     -> coe
                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v10)))
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                     -> coe
                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v7)
                                (coe v10)))
                   _ -> MAlonzo.RTE.mazUnreachableError)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Product.Relation.Binary.Lex.Strict._.×-decidable
d_'215''45'decidable_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'215''45'decidable_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10 v11 v12 v13 v14
  = du_'215''45'decidable_268 v10 v11 v12 v13 v14
du_'215''45'decidable_268 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'215''45'decidable_268 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
      (coe
         v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
         (coe
            v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe
            v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Data.Product.Relation.Binary.Lex.Strict._._≋_
d__'8779'__304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8779'__304 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._<ₗₑₓ_
d__'60''8343''8337''8339'__306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'60''8343''8337''8339'__306 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-irreflexive
d_'215''45'irreflexive_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'215''45'irreflexive_308 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-antisymmetric
d_'215''45'antisymmetric_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'antisymmetric_326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 v15 v16 v17
  = du_'215''45'antisymmetric_326 v15 v16 v17
du_'215''45'antisymmetric_326 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'antisymmetric_326 v0 v1 v2
  = coe du_antisym_340 (coe v0) (coe v1) (coe v2)
-- Data.Product.Relation.Binary.Lex.Strict._._.antisym
d_antisym_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_antisym_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
              ~v12 ~v13 ~v14 v15 ~v16 ~v17 v18 v19 v20 v21
  = du_antisym_340 v15 v18 v19 v20 v21
du_antisym_340 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_antisym_340 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> coe
             seq (coe v4)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                    erased
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe
                       v0
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                          (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                          (\ v7 v8 -> v7) v1 v2)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v7 v8 -> v8)
                          (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)) v1 v2)
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Product.Relation.Binary.Lex.Strict._.×-respectsʳ
d_'215''45'respects'691'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'respects'691'_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 v12 v13 v14 v15 v16 v17 v18 v19
  = du_'215''45'respects'691'_358 v12 v13 v14 v15 v16 v17 v18 v19
du_'215''45'respects'691'_358 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'respects'691'_358 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe
                v1
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                   (\ v9 v10 -> v9) v3 v4)
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)) v8)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   v0
                   (coe
                      MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                      (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                      (\ v9 v10 -> v9) v3 v4)
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v9 v10 -> v10)
                      (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)) v3 v4)
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                (coe
                   v2
                   (coe
                      MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                      (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                      (\ v9 v10 -> v9) v3 v4)
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Product.Relation.Binary.Lex.Strict._.×-respectsˡ
d_'215''45'respects'737'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'respects'737'_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
  = du_'215''45'respects'737'_380 v12 v13 v14 v15 v16 v17 v18 v19 v20
du_'215''45'respects'737'_380 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'respects'737'_380 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe
                v2
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v10 v11 -> v11)
                   (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)) v5
                   v4)
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) v9)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v10 v11 -> v11)
                      (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)) v5
                      v4)
                   (coe
                      v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v10 v11 -> v11)
                      (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10)) v5
                      v4)
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Product.Relation.Binary.Lex.Strict._.×-respects₂
d_'215''45'respects'8322'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'respects'8322'_406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13 v14
  = du_'215''45'respects'8322'_406 v12 v13 v14
du_'215''45'respects'8322'_406 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'respects'8322'_406 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'215''45'respects'691'_358
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_40 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe
         du_'215''45'respects'737'_380
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_38 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_40 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
-- Data.Product.Relation.Binary.Lex.Strict._.×-compare
d_'215''45'compare_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'215''45'compare_430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 v12 v13 v14 v15 v16
  = du_'215''45'compare_430 v12 v13 v14 v15 v16
du_'215''45'compare_430 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_'215''45'compare_430 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> let v9 = coe v1 v5 v7 in
                  coe
                    (case coe v9 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v10
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v10))
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v11
                         -> let v13 = coe v2 v6 v8 in
                            coe
                              (case coe v13 of
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v14
                                   -> coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                        (coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                              (coe v14)))
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v15
                                   -> coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                           (coe v15))
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v16
                                   -> coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                        (coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe v0 v5 v7 v11) (coe v16)))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v12
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v12))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Product.Relation.Binary.Lex.Strict._._<ₗₑₓ_
d__'60''8343''8337''8339'__612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'60''8343''8337''8339'__612 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-wellFounded'
d_'215''45'wellFounded''_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'215''45'wellFounded''_614 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._.×-acc
d_'215''45'acc_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'215''45'acc_636 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._<ₗₑₓ_
d__'60''8343''8337''8339'__668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'60''8343''8337''8339'__668 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-wellFounded
d_'215''45'wellFounded_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'215''45'wellFounded_670 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._≋_
d__'8779'__696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8779'__696 = erased
-- Data.Product.Relation.Binary.Lex.Strict._._<ₗₑₓ_
d__'60''8343''8337''8339'__698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'60''8343''8337''8339'__698 = erased
-- Data.Product.Relation.Binary.Lex.Strict._.×-isPreorder
d_'215''45'isPreorder_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'215''45'isPreorder_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13
  = du_'215''45'isPreorder_700 v12 v13
du_'215''45'isPreorder_700 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'215''45'isPreorder_700 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v1)))
      (coe
         du_'215''45'reflexive_50
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88 (coe v1)))
      (coe
         du_'215''45'transitive_78
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_118
            (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_90 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_90 (coe v1)))
-- Data.Product.Relation.Binary.Lex.Strict._.×-isStrictPartialOrder
d_'215''45'isStrictPartialOrder_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_'215''45'isStrictPartialOrder_710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'215''45'isStrictPartialOrder_710 v12 v13
du_'215''45'isStrictPartialOrder_710 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
du_'215''45'isStrictPartialOrder_710 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_412
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v1)))
      (coe
         du_'215''45'transitive_78
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_386 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_386 (coe v1)))
      (coe
         du_'215''45'respects'8322'_406
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_388
            (coe v1)))
-- Data.Product.Relation.Binary.Lex.Strict._.×-isStrictTotalOrder
d_'215''45'isStrictTotalOrder_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'215''45'isStrictTotalOrder_720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 ~v10 ~v11 v12 v13
  = du_'215''45'isStrictTotalOrder_720 v12 v13
du_'215''45'isStrictTotalOrder_720 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
du_'215''45'isStrictTotalOrder_720 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_680
      (coe
         du_'215''45'isStrictPartialOrder_710
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
            (coe v1)))
      (coe
         du_'215''45'compare_430
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
                  (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_634 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_634 (coe v1)))
-- Data.Product.Relation.Binary.Lex.Strict.×-preorder
d_'215''45'preorder_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'215''45'preorder_730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'preorder_730 v6 v7
du_'215''45'preorder_730 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'215''45'preorder_730 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe
         du_'215''45'isPreorder_700
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))
-- Data.Product.Relation.Binary.Lex.Strict.×-strictPartialOrder
d_'215''45'strictPartialOrder_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
d_'215''45'strictPartialOrder_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'strictPartialOrder_740 v6 v7
du_'215''45'strictPartialOrder_740 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_760
du_'215''45'strictPartialOrder_740 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_842
      (coe
         du_'215''45'isStrictPartialOrder_710
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_782
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_782
            (coe v1)))
-- Data.Product.Relation.Binary.Lex.Strict.×-strictTotalOrder
d_'215''45'strictTotalOrder_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
d_'215''45'strictTotalOrder_750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'strictTotalOrder_750 v6 v7
du_'215''45'strictTotalOrder_750 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1280
du_'215''45'strictTotalOrder_750 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1386
      (coe
         du_'215''45'isStrictTotalOrder_720
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_1302
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_1302
            (coe v1)))
