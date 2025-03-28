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
  = C_HasPreorder'46'constructor_1257 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
                                      (AgdaAny ->
                                       AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714)
-- Class.HasOrder.Core._._.HasPreorder._≤_
d__'8804'__44 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8804'__44 = erased
-- Class.HasOrder.Core._._.HasPreorder._<_
d__'60'__46 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'60'__46 = erased
-- Class.HasOrder.Core._._.HasPreorder.≤-isPreorder
d_'8804''45'isPreorder_48 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_48 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_1257 v3 v5 -> coe v3
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
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_56 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_1257 v3 v5 -> coe v5
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
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
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
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._.trans
d_trans_68 ::
  T_HasPreorder_28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
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
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
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
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
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
         MAlonzo.Code.Function.Bundles.d_from_1726
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
                     MAlonzo.Code.Function.Bundles.d_to_1724
                     (coe d_'8804''8660''60''8744''8776'_56 v0 v1 v2) v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v7
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                  -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
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
d_HasDecPreorder_162 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecPreorder_162
  = C_HasDecPreorder'46'constructor_13505 T_HasPreorder_28
                                          (AgdaAny ->
                                           AgdaAny ->
                                           MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                          (AgdaAny ->
                                           AgdaAny ->
                                           MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPreorder.hasPreorder
d_hasPreorder_170 :: T_HasDecPreorder_162 -> T_HasPreorder_28
d_hasPreorder_170 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_13505 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-≤
d_dec'45''8804'_172 ::
  T_HasDecPreorder_162 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_172 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_13505 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-<
d_dec'45''60'_174 ::
  T_HasDecPreorder_162 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_174 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_13505 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder
d_HasPartialOrder_176 a0 a1 a2 a3 a4 a5 = ()
data T_HasPartialOrder_176
  = C_HasPartialOrder'46'constructor_13979 T_HasPreorder_28
                                           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.HasOrder.Core._._.HasPartialOrder.hasPreorder
d_hasPreorder_182 :: T_HasPartialOrder_176 -> T_HasPreorder_28
d_hasPreorder_182 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_13979 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-antisym
d_'8804''45'antisym_184 ::
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_184 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_13979 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-isPartialOrder
d_'8804''45'isPartialOrder_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isPartialOrder_186 v6
du_'8804''45'isPartialOrder_186 ::
  T_HasPartialOrder_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_186 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe d_'8804''45'isPreorder_48 (coe d_hasPreorder_182 (coe v0)))
      (coe d_'8804''45'antisym_184 (coe v0))
-- Class.HasOrder.Core._._.HasPartialOrder.<-asymmetric
d_'60''45'asymmetric_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_188 = erased
-- Class.HasOrder.Core._._.HasPartialOrder.<-trans
d_'60''45'trans_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_'60''45'trans_202 v6 v7 v8 v9 v10 v11
du_'60''45'trans_202 ::
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_202 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''8743''8777''8658''60'_88 (coe d_hasPreorder_182 (coe v0))
      (coe v1) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (d_'8804''45'isPreorder_48 (coe d_hasPreorder_182 (coe v0))) v1 v2
            v3
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_182 (coe v0))
                  (coe v1) (coe v2) (coe v4)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_182 (coe v0))
                  (coe v2) (coe v3) (coe v5))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_182 (coe v0))
                    (coe v2) (coe v3) (coe v5))
                 (coe
                    d_'8804''45'antisym_184 v0 v2 v3
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_182 (coe v0))
                          (coe v2) (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                       (d_'8804''45'isPreorder_48 (coe d_hasPreorder_182 (coe v0))) v3 v1
                       v2
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1726
                          (coe
                             d_'8804''8660''60''8744''8776'_56 (d_hasPreorder_182 (coe v0)) v3
                             v1)
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                   (coe d_'8804''45'isPreorder_48 (coe d_hasPreorder_182 (coe v0))))
                                v1 v3 v6)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_'60''8658''8804''8743''8777'_78 (coe d_hasPreorder_182 (coe v0))
                             (coe v1) (coe v2) (coe v4))))))))
-- Class.HasOrder.Core._._.HasPartialOrder.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_220 = erased
-- Class.HasOrder.Core._._.HasPartialOrder.≥⇒≮
d_'8805''8658''8814'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8805''8658''8814'_234 = erased
-- Class.HasOrder.Core._._.HasDecPartialOrder
d_HasDecPartialOrder_256 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecPartialOrder_256
  = C_HasDecPartialOrder'46'constructor_29851 T_HasPartialOrder_176
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPartialOrder.hasPartialOrder
d_hasPartialOrder_264 ::
  T_HasDecPartialOrder_256 -> T_HasPartialOrder_176
d_hasPartialOrder_264 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_29851 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-≤
d_dec'45''8804'_266 ::
  T_HasDecPartialOrder_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_266 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_29851 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-<
d_dec'45''60'_268 ::
  T_HasDecPartialOrder_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_268 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_29851 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder
d_HasTotalOrder_270 a0 a1 a2 a3 a4 a5 = ()
data T_HasTotalOrder_270
  = C_HasTotalOrder'46'constructor_30277 T_HasPartialOrder_176
                                         (AgdaAny ->
                                          AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Class.HasOrder.Core._._.HasTotalOrder.hasPartialOrder
d_hasPartialOrder_276 ::
  T_HasTotalOrder_270 -> T_HasPartialOrder_176
d_hasPartialOrder_276 v0
  = case coe v0 of
      C_HasTotalOrder'46'constructor_30277 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder.≤-total
d_'8804''45'total_278 ::
  T_HasTotalOrder_270 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_278 v0
  = case coe v0 of
      C_HasTotalOrder'46'constructor_30277 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasTotalOrder.≤-isTotalOrder
d_'8804''45'isTotalOrder_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isTotalOrder_280 v6
du_'8804''45'isTotalOrder_280 ::
  T_HasTotalOrder_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
du_'8804''45'isTotalOrder_280 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20555
      (coe
         du_'8804''45'isPartialOrder_186
         (coe d_hasPartialOrder_276 (coe v0)))
      (coe d_'8804''45'total_278 (coe v0))
-- Class.HasOrder.Core._._.HasTotalOrder.≮⇒≥
d_'8814''8658''8805'_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_270 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8814''8658''8805'_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 ~v10
  = du_'8814''8658''8805'_298 v6 v7 v8 v9
du_'8814''8658''8805'_298 ::
  T_HasTotalOrder_270 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8814''8658''8805'_298 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    coe
      (let v5 = coe d_'8804''45'total_278 v0 v3 v2 in
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
                                    MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
                                    (d_'8804''45'isPreorder_48
                                       (coe d_hasPreorder_182 (coe d_hasPartialOrder_276 (coe v0))))
                                    v3 v2
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                       (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                          (coe
                                             d_'8804''45'isPreorder_48
                                             (coe
                                                d_hasPreorder_182
                                                (coe d_hasPartialOrder_276 (coe v0)))))
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
d_HasDecTotalOrder_354 a0 a1 a2 a3 a4 a5 = ()
data T_HasDecTotalOrder_354
  = C_HasDecTotalOrder'46'constructor_40261 T_HasTotalOrder_270
                                            (AgdaAny ->
                                             AgdaAny ->
                                             MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                            (AgdaAny ->
                                             AgdaAny ->
                                             MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecTotalOrder.hasTotalOrder
d_hasTotalOrder_362 ::
  T_HasDecTotalOrder_354 -> T_HasTotalOrder_270
d_hasTotalOrder_362 v0
  = case coe v0 of
      C_HasDecTotalOrder'46'constructor_40261 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecTotalOrder.dec-≤
d_dec'45''8804'_364 ::
  T_HasDecTotalOrder_354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_364 v0
  = case coe v0 of
      C_HasDecTotalOrder'46'constructor_40261 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecTotalOrder.dec-<
d_dec'45''60'_366 ::
  T_HasDecTotalOrder_354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_366 v0
  = case coe v0 of
      C_HasDecTotalOrder'46'constructor_40261 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._.HasPreorder≡
d_HasPreorder'8801'_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasPreorder'8801'_368 = erased
-- Class.HasOrder.Core._.HasDecPreorder≡
d_HasDecPreorder'8801'_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecPreorder'8801'_370 = erased
-- Class.HasOrder.Core._.HasPartialOrder≡
d_HasPartialOrder'8801'_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasPartialOrder'8801'_372 = erased
-- Class.HasOrder.Core._.HasDecPartialOrder≡
d_HasDecPartialOrder'8801'_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecPartialOrder'8801'_374 = erased
-- Class.HasOrder.Core._.HasTotalOrder≡
d_HasTotalOrder'8801'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasTotalOrder'8801'_376 = erased
-- Class.HasOrder.Core._.HasDecTotalOrder≡
d_HasDecTotalOrder'8801'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_HasDecTotalOrder'8801'_378 = erased
-- Class.HasOrder.Core._._<_
d__'60'__382 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'60'__382 = erased
-- Class.HasOrder.Core._._<?_
d__'60''63'__384 ::
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
d__'60''63'__384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du__'60''63'__384
du__'60''63'__384 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__384 = coe du__'60''63'__72
-- Class.HasOrder.Core._._>_
d__'62'__386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'62'__386 = erased
-- Class.HasOrder.Core._._≤_
d__'8804'__388 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8804'__388 = erased
-- Class.HasOrder.Core._._≤?_
d__'8804''63'__390 ::
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
d__'8804''63'__390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du__'8804''63'__390
du__'8804''63'__390 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__390 = coe du__'8804''63'__70
-- Class.HasOrder.Core._._≥_
d__'8805'__392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny -> ()
d__'8805'__392 = erased
-- Class.HasOrder.Core._.<-irrefl
d_'60''45'irrefl_394 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_394 = erased
-- Class.HasOrder.Core._.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''8658''8804''8743''8777'_396 v6
du_'60''8658''8804''8743''8777'_396 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_396 v0
  = coe du_'60''8658''8804''8743''8777'_78 (coe v0)
-- Class.HasOrder.Core._.isEquivalence
d_isEquivalence_398 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_398 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_400 ::
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
d_'8804''45'antisym'8658''60''45'asym_400 = erased
-- Class.HasOrder.Core._.≤-isPreorder
d_'8804''45'isPreorder_402 ::
  T_HasPreorder_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_402 v0
  = coe d_'8804''45'isPreorder_48 (coe v0)
-- Class.HasOrder.Core._.refl
d_refl_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 -> AgdaAny -> AgdaAny
d_refl_404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_404 v6
du_refl_404 :: T_HasPreorder_28 -> AgdaAny -> AgdaAny
du_refl_404 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.trans
d_trans_406 ::
  T_HasPreorder_28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_48 (coe v0))
-- Class.HasOrder.Core._.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_408 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_408 v0
  = coe d_'8804''8660''60''8744''8776'_56 (coe v0)
-- Class.HasOrder.Core._.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''8743''8777''8658''60'_410 v6
du_'8804''8743''8777''8658''60'_410 ::
  T_HasPreorder_28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_410 v0
  = coe du_'8804''8743''8777''8658''60'_88 (coe v0)
-- Class.HasOrder.Core._.<-asymmetric
d_'60''45'asymmetric_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_414 = erased
-- Class.HasOrder.Core._.<-trans
d_'60''45'trans_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'trans_416 v6
du_'60''45'trans_416 ::
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_416 v0 = coe du_'60''45'trans_202 (coe v0)
-- Class.HasOrder.Core._.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_418 = erased
-- Class.HasOrder.Core._.≤-antisym
d_'8804''45'antisym_420 ::
  T_HasPartialOrder_176 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_420 v0 = coe d_'8804''45'antisym_184 (coe v0)
-- Class.HasOrder.Core._.≤-isPartialOrder
d_'8804''45'isPartialOrder_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isPartialOrder_422 v6
du_'8804''45'isPartialOrder_422 ::
  T_HasPartialOrder_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_422 v0
  = coe du_'8804''45'isPartialOrder_186 (coe v0)
-- Class.HasOrder.Core._.≥⇒≮
d_'8805''8658''8814'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasPartialOrder_176 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8805''8658''8814'_424 = erased
-- Class.HasOrder.Core._.dec-<
d_dec'45''60'_428 ::
  T_HasDecPartialOrder_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_428 v0 = coe d_dec'45''60'_268 (coe v0)
-- Class.HasOrder.Core._.dec-≤
d_dec'45''8804'_430 ::
  T_HasDecPartialOrder_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_430 v0 = coe d_dec'45''8804'_266 (coe v0)
-- Class.HasOrder.Core._.≤-isTotalOrder
d_'8804''45'isTotalOrder_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isTotalOrder_434 v6
du_'8804''45'isTotalOrder_434 ::
  T_HasTotalOrder_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
du_'8804''45'isTotalOrder_434 v0
  = coe du_'8804''45'isTotalOrder_280 (coe v0)
-- Class.HasOrder.Core._.≤-total
d_'8804''45'total_436 ::
  T_HasTotalOrder_270 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_436 v0 = coe d_'8804''45'total_278 (coe v0)
-- Class.HasOrder.Core._.≮⇒≥
d_'8814''8658''8805'_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_HasTotalOrder_270 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_'8814''8658''8805'_438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8814''8658''8805'_438 v6
du_'8814''8658''8805'_438 ::
  T_HasTotalOrder_270 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_'8814''8658''8805'_438 v0 v1 v2 v3 v4
  = coe du_'8814''8658''8805'_298 (coe v0) v1 v2 v3
-- Class.HasOrder.Core._.dec-<
d_dec'45''60'_442 ::
  T_HasDecTotalOrder_354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_442 v0 = coe d_dec'45''60'_366 (coe v0)
-- Class.HasOrder.Core._.dec-≤
d_dec'45''8804'_444 ::
  T_HasDecTotalOrder_354 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_444 v0 = coe d_dec'45''8804'_364 (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromNonStrict
d_hasPreorderFromNonStrict_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_28
d_hasPreorderFromNonStrict_520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_hasPreorderFromNonStrict_520 v6 v7
du_hasPreorderFromNonStrict_520 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_28
du_hasPreorderFromNonStrict_520 v0 v1
  = coe
      C_HasPreorder'46'constructor_1257 v0
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
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
                          MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 v0 v2 v3 v5
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Class.HasOrder.Core._._._.hasPartialOrderFromNonStrict
d_hasPartialOrderFromNonStrict_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_176
d_hasPartialOrderFromNonStrict_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_hasPartialOrderFromNonStrict_540 v6 v7 v8
du_hasPartialOrderFromNonStrict_540 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_176
du_hasPartialOrderFromNonStrict_540 v0 v1 v2
  = coe
      C_HasPartialOrder'46'constructor_13979
      (coe du_hasPreorderFromNonStrict_520 (coe v0) (coe v1)) (coe v2)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictPartialOrder
d_hasPreorderFromStrictPartialOrder_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_28
d_hasPreorderFromStrictPartialOrder_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_hasPreorderFromStrictPartialOrder_598 v6
du_hasPreorderFromStrictPartialOrder_598 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_28
du_hasPreorderFromStrictPartialOrder_598 v0
  = coe
      C_HasPreorder'46'constructor_1257
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_isPreorder'8322'_350
         (coe v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 (coe (\ v3 -> v3))
           (coe (\ v3 -> v3)))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictPartialOrder
d_hasPartialOrderFromStrictPartialOrder_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_176
d_hasPartialOrderFromStrictPartialOrder_602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                            v6
  = du_hasPartialOrderFromStrictPartialOrder_602 v6
du_hasPartialOrderFromStrictPartialOrder_602 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_176
du_hasPartialOrderFromStrictPartialOrder_602 v0
  = coe
      C_HasPartialOrder'46'constructor_13979
      (coe du_hasPreorderFromStrictPartialOrder_598 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_antisym_30
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_302
            (coe v0)))
-- Class.HasOrder.Core._._._.spo
d_spo_610 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_spo_610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
      (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictTotalOrder
d_hasPreorderFromStrictTotalOrder_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_28
d_hasPreorderFromStrictTotalOrder_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_hasPreorderFromStrictTotalOrder_612 v6
du_hasPreorderFromStrictTotalOrder_612 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_28
du_hasPreorderFromStrictTotalOrder_612 v0
  = coe
      du_hasPreorderFromStrictPartialOrder_598
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
         (coe v0))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictTotalOrder
d_hasPartialOrderFromStrictTotalOrder_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_176
d_hasPartialOrderFromStrictTotalOrder_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                          v6
  = du_hasPartialOrderFromStrictTotalOrder_614 v6
du_hasPartialOrderFromStrictTotalOrder_614 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_176
du_hasPartialOrderFromStrictTotalOrder_614 v0
  = coe
      du_hasPartialOrderFromStrictPartialOrder_602
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
         (coe v0))
