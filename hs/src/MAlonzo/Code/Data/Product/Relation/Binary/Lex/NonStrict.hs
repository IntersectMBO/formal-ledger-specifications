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

module MAlonzo.Code.Data.Product.Relation.Binary.Lex.NonStrict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Product.Relation.Binary.Lex.NonStrict.×-Lex
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
-- Data.Product.Relation.Binary.Lex.NonStrict.×-reflexive
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
                        ~v10 ~v11 v12 v13 v14
  = du_'215''45'reflexive_50 v12 v13 v14
du_'215''45'reflexive_50 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'reflexive_50 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict.du_'215''45'reflexive_50
      (coe v0) (coe v1) (coe v2)
-- Data.Product.Relation.Binary.Lex.NonStrict._._≤ₗₑₓ_
d__'8804''8343''8337''8339'__80 ::
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
d__'8804''8343''8337''8339'__80 = erased
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-transitive
d_'215''45'transitive_82 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'transitive_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10 v11 v12 v13 v14
  = du_'215''45'transitive_82 v10 v11 v12 v13 v14
du_'215''45'transitive_82 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'transitive_82 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict.du_'215''45'transitive_78
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_124
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
               (coe v0))))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'trans_202
         (coe v0))
      (coe v1) (coe v2) (coe v3) (coe v4)
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-total
d_'215''45'total_130 ::
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
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'215''45'total_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                     v11 ~v12 v13 v14
  = du_'215''45'total_130 v10 v11 v13 v14
du_'215''45'total_130 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'215''45'total_130 v0 v1 v2 v3
  = coe du_total_148 (coe v0) (coe v1) (coe v2) (coe v3)
-- Data.Product.Relation.Binary.Lex.NonStrict._._.total
d_total_148 ::
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
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 ~v12
            v13 v14 v15 v16
  = du_total_148 v10 v11 v13 v14 v15 v16
du_total_148 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_148 v0 v1 v2 v3 v4 v5
  = let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4) in
    coe
      (let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5) in
       coe
         (let v8
                = coe
                    v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) in
          coe
            (case coe v8 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                 -> if coe v9
                      then case coe v10 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                               -> let v12
                                        = coe
                                            v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)) in
                                  coe
                                    (case coe v12 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                         -> coe
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                              (coe
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v11) (coe v13)))
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                         -> coe
                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                              (coe
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe
                                                       v0
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v4))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v5))
                                                       v11)
                                                    (coe v13)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError
                      else (let v11
                                  = seq
                                      (coe v10)
                                      (let v11 = coe v2 v6 v7 in
                                       coe
                                         (case coe v11 of
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) erased)
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                              -> coe
                                                   MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) erased)
                                            _ -> MAlonzo.RTE.mazUnreachableError)) in
                            coe
                              (case coe v11 of
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v12
                                   -> coe
                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v12))
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v13
                                   -> let v15
                                            = coe
                                                v3
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                   (coe v5)) in
                                      coe
                                        (case coe v15 of
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                             -> coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v13) (coe v16)))
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                             -> coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           v0
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v4))
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5))
                                                           v13)
                                                        (coe v16)))
                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                 MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v14
                                   -> coe
                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v14))
                                 _ -> MAlonzo.RTE.mazUnreachableError))
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-decidable
d_'215''45'decidable_216 ::
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
d_'215''45'decidable_216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10 v11 v12
  = du_'215''45'decidable_216 v10 v11 v12
du_'215''45'decidable_216 ::
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
du_'215''45'decidable_216 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict.du_'215''45'decidable_268
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'decidable_434
         (coe v0) (coe v1))
      (coe v2)
-- Data.Product.Relation.Binary.Lex.NonStrict._._≤ₗₑₓ_
d__'8804''8343''8337''8339'__248 ::
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
d__'8804''8343''8337''8339'__248 = erased
-- Data.Product.Relation.Binary.Lex.NonStrict._._≋_
d__'8779'__250 ::
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
d__'8779'__250 = erased
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-antisymmetric
d_'215''45'antisymmetric_252 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'antisymmetric_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 ~v12 v13 v14 v15
  = du_'215''45'antisymmetric_252 v13 v14 v15
du_'215''45'antisymmetric_252 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'antisymmetric_252 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict.du_'215''45'antisymmetric_326
      (coe v0) (coe v1) (coe v2)
-- Data.Product.Relation.Binary.Lex.NonStrict._._.irrefl₁
d_irrefl'8321'_300 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl'8321'_300 = erased
-- Data.Product.Relation.Binary.Lex.NonStrict._._.asym₁
d_asym'8321'_302 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym'8321'_302 = erased
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-respects₂
d_'215''45'respects'8322'_304 ::
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
d_'215''45'respects'8322'_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13 v14
  = du_'215''45'respects'8322'_304 v12 v13 v14
du_'215''45'respects'8322'_304 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'respects'8322'_304 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Relation.Binary.Lex.Strict.du_'215''45'respects'8322'_406
      (coe v0)
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
         (coe v0) (coe v1))
      (coe v2)
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-isPartialOrder
d_'215''45'isPartialOrder_312 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'215''45'isPartialOrder_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13
  = du_'215''45'isPartialOrder_312 v12 v13
du_'215''45'isPartialOrder_312 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'215''45'isPartialOrder_312 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'isEquivalence_236
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256 (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe v1))))
         (coe
            du_'215''45'reflexive_50
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe v1))))
         (coe
            du_'215''45'transitive_82 (coe v0)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_90
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe v1)))))
      (coe
         du_'215''45'antisymmetric_252
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_258 (coe v1)))
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-isTotalOrder
d_'215''45'isTotalOrder_322 ::
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
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'215''45'isTotalOrder_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 v12 v13 v14
  = du_'215''45'isTotalOrder_322 v12 v13 v14
du_'215''45'isTotalOrder_322 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_'215''45'isTotalOrder_322 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe
         du_'215''45'isPartialOrder_312
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
            (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
            (coe v2)))
      (coe
         du_'215''45'total_130
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_256
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_496
                     (coe v1)))))
         (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_498 (coe v1))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_498 (coe v2)))
-- Data.Product.Relation.Binary.Lex.NonStrict._.×-isDecTotalOrder
d_'215''45'isDecTotalOrder_334 ::
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
d_'215''45'isDecTotalOrder_334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               ~v9 ~v10 ~v11 v12 v13
  = du_'215''45'isDecTotalOrder_334 v12 v13
du_'215''45'isDecTotalOrder_334 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_546
du_'215''45'isDecTotalOrder_334 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_618
      (coe
         du_'215''45'isTotalOrder_322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe v1)))
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du_'215''45'decidable_222
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v1)))
      (coe
         du_'215''45'decidable_216
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__560
            (coe v1)))
-- Data.Product.Relation.Binary.Lex.NonStrict.×-poset
d_'215''45'poset_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_'215''45'poset_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'poset_344 v6 v7
du_'215''45'poset_344 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_'215''45'poset_344 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_588
      (coe
         du_'215''45'isPartialOrder_312
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_514
            (coe v1)))
-- Data.Product.Relation.Binary.Lex.NonStrict.×-totalOrder
d_'215''45'totalOrder_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
d_'215''45'totalOrder_506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'totalOrder_506 v6 v7
du_'215''45'totalOrder_506 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_986
du_'215''45'totalOrder_506 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1090
      (coe
         du_'215''45'isTotalOrder_322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__558
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_556
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_1008 (coe v1)))
-- Data.Product.Relation.Binary.Lex.NonStrict.×-decTotalOrder
d_'215''45'decTotalOrder_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
d_'215''45'decTotalOrder_706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'215''45'decTotalOrder_706 v6 v7
du_'215''45'decTotalOrder_706 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_1098
du_'215''45'decTotalOrder_706 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_1272
      (coe
         du_'215''45'isDecTotalOrder_334
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_1120
            (coe v1)))
