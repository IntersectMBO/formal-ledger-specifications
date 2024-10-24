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
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Class.HasOrder.Core._._.HasPreorder
d_HasPreorder_20 a0 a1 a2 = ()
data T_HasPreorder_20
  = C_HasPreorder'46'constructor_851 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
                                     (AgdaAny ->
                                      AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714)
-- Class.HasOrder.Core._._.HasPreorder._≤_
d__'8804'__36 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'8804'__36 = erased
-- Class.HasOrder.Core._._.HasPreorder._<_
d__'60'__38 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'60'__38 = erased
-- Class.HasOrder.Core._._.HasPreorder.≤-isPreorder
d_'8804''45'isPreorder_40 ::
  T_HasPreorder_20 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_40 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_851 v3 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder.<-irrefl
d_'60''45'irrefl_42 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_42 = erased
-- Class.HasOrder.Core._._.HasPreorder.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_48 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_48 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_851 v3 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder._≥_
d__'8805'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'8805'__50 = erased
-- Class.HasOrder.Core._._.HasPreorder._>_
d__'62'__52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'62'__52 = erased
-- Class.HasOrder.Core._._.HasPreorder._.isEquivalence
d_isEquivalence_56 ::
  T_HasPreorder_20 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_56 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._.refl
d_refl_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny
d_refl_58 ~v0 ~v1 ~v2 v3 = du_refl_58 v3
du_refl_58 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny
du_refl_58 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._.trans
d_trans_60 ::
  T_HasPreorder_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_60 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._._.HasPreorder._≤?_
d__'8804''63'__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__62 ~v0 ~v1 ~v2 ~v3 v4 = du__'8804''63'__62 v4
du__'8804''63'__62 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__62 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
-- Class.HasOrder.Core._._.HasPreorder._<?_
d__'60''63'__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__64 ~v0 ~v1 ~v2 ~v3 v4 = du__'60''63'__64 v4
du__'60''63'__64 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__64 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
-- Class.HasOrder.Core._._.HasPreorder.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_70 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''8658''8804''8743''8777'_70 v3 v4 v5 v6
du_'60''8658''8804''8743''8777'_70 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_70 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe d_'8804''8660''60''8744''8776'_48 v0 v1 v2)
         (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3)))
      erased
-- Class.HasOrder.Core._._.HasPreorder.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_80 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8804''8743''8777''8658''60'_80 v3 v4 v5 v6
du_'8804''8743''8777''8658''60'_80 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_80 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_1724
                     (coe d_'8804''8660''60''8744''8776'_48 v0 v1 v2) v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v7
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                  -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPreorder.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_114 = erased
-- Class.HasOrder.Core._._.HasDecPreorder
d_HasDecPreorder_154 a0 a1 a2 = ()
data T_HasDecPreorder_154
  = C_HasDecPreorder'46'constructor_9169 T_HasPreorder_20
                                         (AgdaAny ->
                                          AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                         (AgdaAny ->
                                          AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPreorder.hasPreorder
d_hasPreorder_162 :: T_HasDecPreorder_154 -> T_HasPreorder_20
d_hasPreorder_162 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9169 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-≤
d_dec'45''8804'_164 ::
  T_HasDecPreorder_154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_164 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9169 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPreorder.dec-<
d_dec'45''60'_166 ::
  T_HasDecPreorder_154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_166 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9169 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder
d_HasPartialOrder_168 a0 a1 a2 = ()
data T_HasPartialOrder_168
  = C_HasPartialOrder'46'constructor_9459 T_HasPreorder_20
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Class.HasOrder.Core._._.HasPartialOrder.hasPreorder
d_hasPreorder_174 :: T_HasPartialOrder_168 -> T_HasPreorder_20
d_hasPreorder_174 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_9459 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-antisym
d_'8804''45'antisym_176 ::
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_176 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_9459 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasPartialOrder.≤-isPartialOrder
d_'8804''45'isPartialOrder_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_178 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_178 v3
du_'8804''45'isPartialOrder_178 ::
  T_HasPartialOrder_168 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe d_'8804''45'isPreorder_40 (coe d_hasPreorder_174 (coe v0)))
      (coe d_'8804''45'antisym_176 (coe v0))
-- Class.HasOrder.Core._._.HasPartialOrder.<-asymmetric
d_'60''45'asymmetric_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_180 = erased
-- Class.HasOrder.Core._._.HasPartialOrder.<-trans
d_'60''45'trans_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_194 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'60''45'trans_194 v3 v4 v5 v6 v7 v8
du_'60''45'trans_194 ::
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_194 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''8743''8777''8658''60'_80 (coe d_hasPreorder_174 (coe v0))
      (coe v1) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (d_'8804''45'isPreorder_40 (coe d_hasPreorder_174 (coe v0))) v1 v2
            v3
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_70 (coe d_hasPreorder_174 (coe v0))
                  (coe v1) (coe v2) (coe v4)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_70 (coe d_hasPreorder_174 (coe v0))
                  (coe v2) (coe v3) (coe v5))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'60''8658''8804''8743''8777'_70 (coe d_hasPreorder_174 (coe v0))
                    (coe v2) (coe v3) (coe v5))
                 (coe
                    d_'8804''45'antisym_176 v0 v2 v3
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          du_'60''8658''8804''8743''8777'_70 (coe d_hasPreorder_174 (coe v0))
                          (coe v2) (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                       (d_'8804''45'isPreorder_40 (coe d_hasPreorder_174 (coe v0))) v3 v1
                       v2
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1726
                          (coe
                             d_'8804''8660''60''8744''8776'_48 (d_hasPreorder_174 (coe v0)) v3
                             v1)
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                   (coe d_'8804''45'isPreorder_40 (coe d_hasPreorder_174 (coe v0))))
                                v1 v3 v6)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_'60''8658''8804''8743''8777'_70 (coe d_hasPreorder_174 (coe v0))
                             (coe v1) (coe v2) (coe v4))))))))
-- Class.HasOrder.Core._._.HasPartialOrder.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_212 = erased
-- Class.HasOrder.Core._._.HasDecPartialOrder
d_HasDecPartialOrder_222 a0 a1 a2 = ()
data T_HasDecPartialOrder_222
  = C_HasDecPartialOrder'46'constructor_19577 T_HasPartialOrder_168
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Class.HasOrder.Core._._.HasDecPartialOrder.hasPartialOrder
d_hasPartialOrder_230 ::
  T_HasDecPartialOrder_222 -> T_HasPartialOrder_168
d_hasPartialOrder_230 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19577 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-≤
d_dec'45''8804'_232 ::
  T_HasDecPartialOrder_222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_232 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19577 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._._.HasDecPartialOrder.dec-<
d_dec'45''60'_234 ::
  T_HasDecPartialOrder_222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_234 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19577 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.HasOrder.Core._.HasPreorder≡
d_HasPreorder'8801'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasPreorder'8801'_236 = erased
-- Class.HasOrder.Core._.HasDecPreorder≡
d_HasDecPreorder'8801'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasDecPreorder'8801'_238 = erased
-- Class.HasOrder.Core._.HasPartialOrder≡
d_HasPartialOrder'8801'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasPartialOrder'8801'_240 = erased
-- Class.HasOrder.Core._.HasDecPartialOrder≡
d_HasDecPartialOrder'8801'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasDecPartialOrder'8801'_242 = erased
-- Class.HasOrder.Core._._<_
d__'60'__246 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'60'__246 = erased
-- Class.HasOrder.Core._._<?_
d__'60''63'__248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__248 ~v0 ~v1 ~v2 ~v3 = du__'60''63'__248
du__'60''63'__248 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__248 = coe du__'60''63'__64
-- Class.HasOrder.Core._._>_
d__'62'__250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'62'__250 = erased
-- Class.HasOrder.Core._._≤_
d__'8804'__252 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'8804'__252 = erased
-- Class.HasOrder.Core._._≤?_
d__'8804''63'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__254 ~v0 ~v1 ~v2 ~v3 = du__'8804''63'__254
du__'8804''63'__254 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__254 = coe du__'8804''63'__62
-- Class.HasOrder.Core._._≥_
d__'8805'__256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny -> ()
d__'8805'__256 = erased
-- Class.HasOrder.Core._.<-irrefl
d_'60''45'irrefl_258 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_258 = erased
-- Class.HasOrder.Core._.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_260 ~v0 ~v1 ~v2 v3
  = du_'60''8658''8804''8743''8777'_260 v3
du_'60''8658''8804''8743''8777'_260 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_260 v0
  = coe du_'60''8658''8804''8743''8777'_70 (coe v0)
-- Class.HasOrder.Core._.isEquivalence
d_isEquivalence_262 ::
  T_HasPreorder_20 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_262 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_264 = erased
-- Class.HasOrder.Core._.≤-isPreorder
d_'8804''45'isPreorder_266 ::
  T_HasPreorder_20 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_266 v0
  = coe d_'8804''45'isPreorder_40 (coe v0)
-- Class.HasOrder.Core._.refl
d_refl_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 -> AgdaAny -> AgdaAny
d_refl_268 ~v0 ~v1 ~v2 v3 = du_refl_268 v3
du_refl_268 :: T_HasPreorder_20 -> AgdaAny -> AgdaAny
du_refl_268 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._.trans
d_trans_270 ::
  T_HasPreorder_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_270 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_40 (coe v0))
-- Class.HasOrder.Core._.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_272 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_272 v0
  = coe d_'8804''8660''60''8744''8776'_48 (coe v0)
-- Class.HasOrder.Core._.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_274 ~v0 ~v1 ~v2 v3
  = du_'8804''8743''8777''8658''60'_274 v3
du_'8804''8743''8777''8658''60'_274 ::
  T_HasPreorder_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_274 v0
  = coe du_'8804''8743''8777''8658''60'_80 (coe v0)
-- Class.HasOrder.Core._.<-asymmetric
d_'60''45'asymmetric_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_278 = erased
-- Class.HasOrder.Core._.<-trans
d_'60''45'trans_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_280 ~v0 ~v1 ~v2 v3 = du_'60''45'trans_280 v3
du_'60''45'trans_280 ::
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_280 v0 = coe du_'60''45'trans_194 (coe v0)
-- Class.HasOrder.Core._.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_282 = erased
-- Class.HasOrder.Core._.≤-antisym
d_'8804''45'antisym_284 ::
  T_HasPartialOrder_168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_284 v0 = coe d_'8804''45'antisym_176 (coe v0)
-- Class.HasOrder.Core._.≤-isPartialOrder
d_'8804''45'isPartialOrder_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_168 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_286 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_286 v3
du_'8804''45'isPartialOrder_286 ::
  T_HasPartialOrder_168 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_286 v0
  = coe du_'8804''45'isPartialOrder_178 (coe v0)
-- Class.HasOrder.Core._.dec-<
d_dec'45''60'_290 ::
  T_HasDecPartialOrder_222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_290 v0 = coe d_dec'45''60'_234 (coe v0)
-- Class.HasOrder.Core._.dec-≤
d_dec'45''8804'_292 ::
  T_HasDecPartialOrder_222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_292 v0 = coe d_dec'45''8804'_232 (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromNonStrict
d_hasPreorderFromNonStrict_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_20
d_hasPreorderFromNonStrict_364 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hasPreorderFromNonStrict_364 v4 v5
du_hasPreorderFromNonStrict_364 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_20
du_hasPreorderFromNonStrict_364 v0 v1
  = coe
      C_HasPreorder'46'constructor_851 v0
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
d_hasPartialOrderFromNonStrict_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_168
d_hasPartialOrderFromNonStrict_384 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_hasPartialOrderFromNonStrict_384 v4 v5 v6
du_hasPartialOrderFromNonStrict_384 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_168
du_hasPartialOrderFromNonStrict_384 v0 v1 v2
  = coe
      C_HasPartialOrder'46'constructor_9459
      (coe du_hasPreorderFromNonStrict_364 (coe v0) (coe v1)) (coe v2)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictPartialOrder
d_hasPreorderFromStrictPartialOrder_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_20
d_hasPreorderFromStrictPartialOrder_440 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictPartialOrder_440 v4
du_hasPreorderFromStrictPartialOrder_440 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_20
du_hasPreorderFromStrictPartialOrder_440 v0
  = coe
      C_HasPreorder'46'constructor_851
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_isPreorder'8322'_350
         (coe v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 (coe (\ v3 -> v3))
           (coe (\ v3 -> v3)))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictPartialOrder
d_hasPartialOrderFromStrictPartialOrder_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_168
d_hasPartialOrderFromStrictPartialOrder_444 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictPartialOrder_444 v4
du_hasPartialOrderFromStrictPartialOrder_444 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_168
du_hasPartialOrderFromStrictPartialOrder_444 v0
  = coe
      C_HasPartialOrder'46'constructor_9459
      (coe du_hasPreorderFromStrictPartialOrder_440 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_antisym_30
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_302
            (coe v0)))
-- Class.HasOrder.Core._._._.spo
d_spo_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_spo_452 ~v0 ~v1 ~v2 ~v3 v4 = du_spo_452 v4
du_spo_452 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
du_spo_452 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
      (coe v0)
-- Class.HasOrder.Core._._._.hasPreorderFromStrictTotalOrder
d_hasPreorderFromStrictTotalOrder_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_20
d_hasPreorderFromStrictTotalOrder_454 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictTotalOrder_454 v4
du_hasPreorderFromStrictTotalOrder_454 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_20
du_hasPreorderFromStrictTotalOrder_454 v0
  = coe
      du_hasPreorderFromStrictPartialOrder_440 (coe du_spo_452 (coe v0))
-- Class.HasOrder.Core._._._.hasPartialOrderFromStrictTotalOrder
d_hasPartialOrderFromStrictTotalOrder_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_168
d_hasPartialOrderFromStrictTotalOrder_456 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictTotalOrder_456 v4
du_hasPartialOrderFromStrictTotalOrder_456 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_168
du_hasPartialOrderFromStrictTotalOrder_456 v0
  = coe
      du_hasPartialOrderFromStrictPartialOrder_444
      (coe du_spo_452 (coe v0))
