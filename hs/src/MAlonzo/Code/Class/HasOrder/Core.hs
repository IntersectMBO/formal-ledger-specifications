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

module MAlonzo.Code.Class.HasOrder.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.HasOrder.Core._._.HasPreorder
d_HasPreorder_28 a0 a1 a2 a3 a4 a5 = ()
data T_HasPreorder_28
  = C_constructor_130 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858)
-- Class.HasOrder.Core._._.HasPreorder._≤_
d__'8804'__44 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8804'__44 = erased
-- Class.HasOrder.Core._._.HasPreorder._<_
d__'60'__46 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'60'__46 = erased
-- Class.HasOrder.Core._._.HasPreorder.≤-isPreorder
d_'8804''45'isPreorder_48 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_48 v0
  = case coe v0 of
      C_constructor_130 v3 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder.<-irrefl
d_'60''45'irrefl_50 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_50 = erased
-- Class.HasOrder.Core._._.HasPreorder.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_56 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8804''8660''60''8744''8776'_56 v0
  = case coe v0 of
      C_constructor_130 v3 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder._≥_
d__'8805'__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8805'__58 = erased
-- Class.HasOrder.Core._._.HasPreorder._>_
d__'62'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'62'__60 = erased
-- Class.HasOrder.Core._._.HasPreorder._.isEquivalence
d_isEquivalence_64 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._.refl
d_refl_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny
d_refl_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_66 v6
du_refl_66 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny
du_refl_66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_104
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._.trans
d_trans_68 ::
  T_HasPreorder_28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._≤?_
d__'8804''63'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du__'8804''63'__70 v7
du__'8804''63'__70 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__70 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_100 (coe v0)
-- Class.HasOrder.Core._._.HasPreorder._<?_
d__'60''63'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du__'60''63'__72 v7
du__'60''63'__72 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__72 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_100 (coe v0)
-- Class.HasOrder.Core._._.HasPreorder.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'60''8658''8804''8743''8777'_78 v6 v7 v8 v9
du_'60''8658''8804''8743''8777'_78 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_78 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe d_'8804''8660''60''8744''8776'_56 v0 v1 v2)
         (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3)))
      erased
-- Class.HasOrder.Core._._.HasPreorder.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'8804''8743''8777''8658''60'_88 v6 v7 v8 v9
du_'8804''8743''8777''8658''60'_88 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_88 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_1868
                     (coe d_'8804''8660''60''8744''8776'_56 v0 v1 v2) v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v7
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                  -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_122 = erased
-- Class.HasOrder.Core._._.HasDecPreorder
d_HasDecPreorder_164 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecPreorder_164
  = C_constructor_178 T_HasPreorder_28
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPreorder.hasPreorder
d_hasPreorder_172 :: T_HasDecPreorder_164 -> T_HasPreorder_28
d_hasPreorder_172 v0
  = case coe v0 of
      C_constructor_178 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-≤
d_dec'45''8804'_174 ::
  T_HasDecPreorder_164 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_174 v0
  = case coe v0 of
      C_constructor_178 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-<
d_dec'45''60'_176 ::
  T_HasDecPreorder_164 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_176 v0
  = case coe v0 of
      C_constructor_178 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder
d_HasPartialOrder_180 a0 a1 a2 a3 a4 a5 = ()
data T_HasPartialOrder_180
  = C_constructor_244 T_HasPreorder_28
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.HasOrder.Core._._.HasPartialOrder.hasPreorder
d_hasPreorder_186 :: T_HasPartialOrder_180 -> T_HasPreorder_28
d_hasPreorder_186 v0
  = case coe v0 of
      C_constructor_244 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-antisym
d_'8804''45'antisym_188 ::
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_188 v0
  = case coe v0 of
      C_constructor_244 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-isPartialOrder
d_'8804''45'isPartialOrder_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isPartialOrder_190 v6
du_'8804''45'isPartialOrder_190 ::
  T_HasPartialOrder_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8804''45'isPartialOrder_190 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe d_'8804''45'isPreorder_48 (coe d_hasPreorder_186 (coe v0)))
      (coe d_'8804''45'antisym_188 (coe v0))
-- Class.HasOrder.Core._._.HasPartialOrder.<-asymmetric
d_'60''45'asymmetric_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_192 = erased
-- Class.HasOrder.Core._._.HasPartialOrder.<-trans
d_'60''45'trans_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_'60''45'trans_206 v6 v7 v8 v9 v10 v11
du_'60''45'trans_206 ::
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_206 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''8743''8777''8658''60'_88 (coe d_hasPreorder_186 (coe v0))
      (coe v1) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_90
            (d_'8804''45'isPreorder_48 (coe d_hasPreorder_186 (coe v0))) v1 v2
            v3
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_186 (coe v0))
                  (coe v1) (coe v2) (coe v4)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_186 (coe v0))
                  (coe v2) (coe v3) (coe v5))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_186 (coe v0))
                    (coe v2) (coe v3) (coe v5))
                 (coe
                    d_'8804''45'antisym_188 v0 v2 v3
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_186 (coe v0))
                          (coe v2) (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_90
                       (d_'8804''45'isPreorder_48 (coe d_hasPreorder_186 (coe v0))) v3 v1
                       v2
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             d_'8804''8660''60''8744''8776'_56 (d_hasPreorder_186 (coe v0)) v3
                             v1)
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                   (coe d_'8804''45'isPreorder_48 (coe d_hasPreorder_186 (coe v0))))
                                v1 v3 v6)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_186 (coe v0))
                             (coe v1) (coe v2) (coe v4))))))))
-- Class.HasOrder.Core._._.HasPartialOrder.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_224 = erased
-- Class.HasOrder.Core._._.HasPartialOrder.≥⇒≮
d_'8805''8658''8814'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8805''8658''8814'_238 = erased
-- Class.HasOrder.Core._._.HasDecPartialOrder
d_HasDecPartialOrder_262 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecPartialOrder_262
  = C_constructor_276 T_HasPartialOrder_180
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPartialOrder.hasPartialOrder
d_hasPartialOrder_270 ::
  T_HasDecPartialOrder_262 -> T_HasPartialOrder_180
d_hasPartialOrder_270 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-≤
d_dec'45''8804'_272 ::
  T_HasDecPartialOrder_262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_272 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-<
d_dec'45''60'_274 ::
  T_HasDecPartialOrder_262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_274 v0
  = case coe v0 of
      C_constructor_276 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder
d_HasTotalOrder_278 a0 a1 a2 a3 a4 a5 = ()
data T_HasTotalOrder_278
  = C_constructor_352 T_HasPartialOrder_180
                      (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Class.HasOrder.Core._._.HasTotalOrder.hasPartialOrder
d_hasPartialOrder_284 ::
  T_HasTotalOrder_278 -> T_HasPartialOrder_180
d_hasPartialOrder_284 v0
  = case coe v0 of
      C_constructor_352 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder.≤-total
d_'8804''45'total_286 ::
  T_HasTotalOrder_278 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_286 v0
  = case coe v0 of
      C_constructor_352 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder.≤-isTotalOrder
d_'8804''45'isTotalOrder_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_278 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isTotalOrder_288 v6
du_'8804''45'isTotalOrder_288 ::
  T_HasTotalOrder_278 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_'8804''45'isTotalOrder_288 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_540
      (coe
         du_'8804''45'isPartialOrder_190
         (coe d_hasPartialOrder_284 (coe v0)))
      (coe d_'8804''45'total_286 (coe v0))
-- Class.HasOrder.Core._._.HasTotalOrder.≮⇒≥
d_'8814''8658''8805'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_278 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8814''8658''8805'_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
  = du_'8814''8658''8805'_306 v6 v7 v8 v9
du_'8814''8658''8805'_306 ::
  T_HasTotalOrder_278 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8814''8658''8805'_306 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    coe
      (let v5 = coe d_'8804''45'total_286 v0 v3 v2 in
       coe
         (case coe v4 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
              -> let v8
                       = case coe v5 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8 -> coe v8
                           _ -> MAlonzo.RTE.mazUnreachableError in
                 coe
                   (if coe v6
                      then case coe v7 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                               -> coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88
                                    (d_'8804''45'isPreorder_48
                                       (coe d_hasPreorder_186 (coe d_hasPartialOrder_284 (coe v0))))
                                    v3 v2
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                       (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                                          (coe
                                             d_'8804''45'isPreorder_48
                                             (coe
                                                d_hasPreorder_186
                                                (coe d_hasPartialOrder_284 (coe v0)))))
                                       v2 v3 v9)
                             _ -> coe v8
                      else (case coe v5 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9 -> coe v9
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                -> case coe v7 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                            erased
                                     _ -> coe v8
                              _ -> MAlonzo.RTE.mazUnreachableError))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Class.HasOrder.Core._._.HasDecTotalOrder
d_HasDecTotalOrder_364 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecTotalOrder_364
  = C_constructor_378 T_HasTotalOrder_278
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                      (AgdaAny ->
                       AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecTotalOrder.hasTotalOrder
d_hasTotalOrder_372 ::
  T_HasDecTotalOrder_364 -> T_HasTotalOrder_278
d_hasTotalOrder_372 v0
  = case coe v0 of
      C_constructor_378 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecTotalOrder.dec-≤
d_dec'45''8804'_374 ::
  T_HasDecTotalOrder_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_374 v0
  = case coe v0 of
      C_constructor_378 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecTotalOrder.dec-<
d_dec'45''60'_376 ::
  T_HasDecTotalOrder_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_376 v0
  = case coe v0 of
      C_constructor_378 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._.HasPreorder≡
d_HasPreorder'8801'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasPreorder'8801'_380 = erased
-- Class.HasOrder.Core._.HasDecPreorder≡
d_HasDecPreorder'8801'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecPreorder'8801'_382 = erased
-- Class.HasOrder.Core._.HasPartialOrder≡
d_HasPartialOrder'8801'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasPartialOrder'8801'_384 = erased
-- Class.HasOrder.Core._.HasDecPartialOrder≡
d_HasDecPartialOrder'8801'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecPartialOrder'8801'_386 = erased
-- Class.HasOrder.Core._.HasTotalOrder≡
d_HasTotalOrder'8801'_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasTotalOrder'8801'_388 = erased
-- Class.HasOrder.Core._.HasDecTotalOrder≡
d_HasDecTotalOrder'8801'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecTotalOrder'8801'_390 = erased
-- Class.HasOrder.Core._._<_
d__'60'__394 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'60'__394 = erased
-- Class.HasOrder.Core._._<?_
d__'60''63'__396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du__'60''63'__396
du__'60''63'__396 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__396 = coe du__'60''63'__72
-- Class.HasOrder.Core._._>_
d__'62'__398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'62'__398 = erased
-- Class.HasOrder.Core._._≤_
d__'8804'__400 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8804'__400 = erased
-- Class.HasOrder.Core._._≤?_
d__'8804''63'__402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du__'8804''63'__402
du__'8804''63'__402 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__402 = coe du__'8804''63'__70
-- Class.HasOrder.Core._._≥_
d__'8805'__404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8805'__404 = erased
-- Class.HasOrder.Core._.<-irrefl
d_'60''45'irrefl_406 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_406 = erased
-- Class.HasOrder.Core._.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''8658''8804''8743''8777'_408 v6
du_'60''8658''8804''8743''8777'_408 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_408 v0
  = coe du_'60''8658''8804''8743''8777'_78 (coe v0)
-- Class.HasOrder.Core._.isEquivalence
d_isEquivalence_410 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_410 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_412 = erased
-- Class.HasOrder.Core._.≤-isPreorder
d_'8804''45'isPreorder_414 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8804''45'isPreorder_414 v0
  = coe d_'8804''45'isPreorder_48 (coe v0)
-- Class.HasOrder.Core._.refl
d_refl_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny
d_refl_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_416 v6
du_refl_416 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny
du_refl_416 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_104
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.trans
d_trans_418 ::
  T_HasPreorder_28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_418 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_90
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_420 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8804''8660''60''8744''8776'_420 v0
  = coe d_'8804''8660''60''8744''8776'_56 (coe v0)
-- Class.HasOrder.Core._.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''8743''8777''8658''60'_422 v6
du_'8804''8743''8777''8658''60'_422 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_422 v0
  = coe du_'8804''8743''8777''8658''60'_88 (coe v0)
-- Class.HasOrder.Core._.<-asymmetric
d_'60''45'asymmetric_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_426 = erased
-- Class.HasOrder.Core._.<-trans
d_'60''45'trans_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'trans_428 v6
du_'60''45'trans_428 ::
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_428 v0 = coe du_'60''45'trans_206 (coe v0)
-- Class.HasOrder.Core._.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_430 = erased
-- Class.HasOrder.Core._.≤-antisym
d_'8804''45'antisym_432 ::
  T_HasPartialOrder_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_432 v0 = coe d_'8804''45'antisym_188 (coe v0)
-- Class.HasOrder.Core._.≤-isPartialOrder
d_'8804''45'isPartialOrder_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8804''45'isPartialOrder_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isPartialOrder_434 v6
du_'8804''45'isPartialOrder_434 ::
  T_HasPartialOrder_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8804''45'isPartialOrder_434 v0
  = coe du_'8804''45'isPartialOrder_190 (coe v0)
-- Class.HasOrder.Core._.≥⇒≮
d_'8805''8658''8814'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8805''8658''8814'_436 = erased
-- Class.HasOrder.Core._.dec-<
d_dec'45''60'_440 ::
  T_HasDecPartialOrder_262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_440 v0 = coe d_dec'45''60'_274 (coe v0)
-- Class.HasOrder.Core._.dec-≤
d_dec'45''8804'_442 ::
  T_HasDecPartialOrder_262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_442 v0 = coe d_dec'45''8804'_272 (coe v0)
-- Class.HasOrder.Core._.≤-isTotalOrder
d_'8804''45'isTotalOrder_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_278 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
d_'8804''45'isTotalOrder_446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isTotalOrder_446 v6
du_'8804''45'isTotalOrder_446 ::
  T_HasTotalOrder_278 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_488
du_'8804''45'isTotalOrder_446 v0
  = coe du_'8804''45'isTotalOrder_288 (coe v0)
-- Class.HasOrder.Core._.≤-total
d_'8804''45'total_448 ::
  T_HasTotalOrder_278 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_448 v0 = coe d_'8804''45'total_286 (coe v0)
-- Class.HasOrder.Core._.≮⇒≥
d_'8814''8658''8805'_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_278 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8814''8658''8805'_450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8814''8658''8805'_450 v6
du_'8814''8658''8805'_450 ::
  T_HasTotalOrder_278 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_'8814''8658''8805'_450 v0 v1 v2 v3 v4
  = coe du_'8814''8658''8805'_306 (coe v0) v1 v2 v3
-- Class.HasOrder.Core._.dec-<
d_dec'45''60'_454 ::
  T_HasDecTotalOrder_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_454 v0 = coe d_dec'45''60'_376 (coe v0)
-- Class.HasOrder.Core._.dec-≤
d_dec'45''8804'_456 ::
  T_HasDecTotalOrder_364 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_456 v0 = coe d_dec'45''8804'_374 (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromNonStrict
d_hasPreorderFromNonStrict_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_28
d_hasPreorderFromNonStrict_532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_hasPreorderFromNonStrict_532 v6 v7
du_hasPreorderFromNonStrict_532 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_28
du_hasPreorderFromNonStrict_532 v0 v1
  = coe
      C_constructor_130 v0
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
           (coe
              (\ v4 ->
                 let v5 = coe v1 v2 v3 in
                 coe
                   (case coe v5 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                        -> if coe v6
                             then case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                      -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v8)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             else coe
                                    seq (coe v7)
                                    (coe
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                          erased))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
           (coe
              (\ v4 ->
                 case coe v4 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                     -> coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                     -> coe
                          MAlonzo.Code.Relation.Binary.Structures.d_reflexive_88 v0 v2 v3 v5
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Class.HasOrder.Core._._._.hasPartialOrderFromNonStrict
d_hasPartialOrderFromNonStrict_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_180
d_hasPartialOrderFromNonStrict_552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_hasPartialOrderFromNonStrict_552 v6 v7 v8
du_hasPartialOrderFromNonStrict_552 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_180
du_hasPartialOrderFromNonStrict_552 v0 v1 v2
  = coe
      C_constructor_244
      (coe du_hasPreorderFromNonStrict_532 (coe v0) (coe v1)) (coe v2)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictPartialOrder
d_hasPreorderFromStrictPartialOrder_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  T_HasPreorder_28
d_hasPreorderFromStrictPartialOrder_610 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_hasPreorderFromStrictPartialOrder_610 v6
du_hasPreorderFromStrictPartialOrder_610 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  T_HasPreorder_28
du_hasPreorderFromStrictPartialOrder_610 v0
  = coe
      C_constructor_130
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_isPreorder'8322'_350
         (coe v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe (\ v3 -> v3))
           (coe (\ v3 -> v3)))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictPartialOrder
d_hasPartialOrderFromStrictPartialOrder_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  T_HasPartialOrder_180
d_hasPartialOrderFromStrictPartialOrder_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            v6
  = du_hasPartialOrderFromStrictPartialOrder_614 v6
du_hasPartialOrderFromStrictPartialOrder_614 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370 ->
  T_HasPartialOrder_180
du_hasPartialOrderFromStrictPartialOrder_614 v0
  = coe
      C_constructor_244
      (coe du_hasPreorderFromStrictPartialOrder_610 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_antisym_30
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_382
            (coe v0)))
-- Class.HasOrder.Core._._._.spo
d_spo_622 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_370
d_spo_622 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
      (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictTotalOrder
d_hasPreorderFromStrictTotalOrder_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  T_HasPreorder_28
d_hasPreorderFromStrictTotalOrder_624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_hasPreorderFromStrictTotalOrder_624 v6
du_hasPreorderFromStrictTotalOrder_624 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  T_HasPreorder_28
du_hasPreorderFromStrictTotalOrder_624 v0
  = coe
      du_hasPreorderFromStrictPartialOrder_610
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
         (coe v0))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictTotalOrder
d_hasPartialOrderFromStrictTotalOrder_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  T_HasPartialOrder_180
d_hasPartialOrderFromStrictTotalOrder_626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                          v6
  = du_hasPartialOrderFromStrictTotalOrder_626 v6
du_hasPartialOrderFromStrictTotalOrder_626 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624 ->
  T_HasPartialOrder_180
du_hasPartialOrderFromStrictTotalOrder_626 v0
  = coe
      du_hasPartialOrderFromStrictPartialOrder_614
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_632
         (coe v0))
