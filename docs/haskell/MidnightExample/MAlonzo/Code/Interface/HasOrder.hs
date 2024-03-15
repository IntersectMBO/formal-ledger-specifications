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

module MAlonzo.Code.Interface.HasOrder where

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

-- Interface.HasOrder._._.HasPreorder
d_HasPreorder_18 a0 a1 a2 = ()
data T_HasPreorder_18
  = C_HasPreorder'46'constructor_851 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
                                     (AgdaAny ->
                                      AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714)
-- Interface.HasOrder._._.HasPreorder._≤_
d__'8804'__34 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8804'__34 = erased
-- Interface.HasOrder._._.HasPreorder._<_
d__'60'__36 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'60'__36 = erased
-- Interface.HasOrder._._.HasPreorder.≤-isPreorder
d_'8804''45'isPreorder_38 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_38 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_851 v3 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder.<-irrefl
d_'60''45'irrefl_40 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_40 = erased
-- Interface.HasOrder._._.HasPreorder.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_46 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_46 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_851 v3 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder._≥_
d__'8805'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8805'__48 = erased
-- Interface.HasOrder._._.HasPreorder._>_
d__'62'__50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'62'__50 = erased
-- Interface.HasOrder._._.HasPreorder._.isEquivalence
d_isEquivalence_54 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._.refl
d_refl_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny
d_refl_56 ~v0 ~v1 ~v2 v3 = du_refl_56 v3
du_refl_56 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny
du_refl_56 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._.trans
d_trans_58 ::
  T_HasPreorder_18 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_58 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._≤?_
d__'8804''63'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__60 ~v0 ~v1 ~v2 ~v3 v4 = du__'8804''63'__60 v4
du__'8804''63'__60 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__60 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
-- Interface.HasOrder._._.HasPreorder._<?_
d__'60''63'__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__62 ~v0 ~v1 ~v2 ~v3 v4 = du__'60''63'__62 v4
du__'60''63'__62 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__62 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'178'_136 (coe v0)
-- Interface.HasOrder._._.HasPreorder.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_68 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''8658''8804''8743''8777'_68 v3 v4 v5 v6
du_'60''8658''8804''8743''8777'_68 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_68 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe d_'8804''8660''60''8744''8776'_46 v0 v1 v2)
         (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3)))
      erased
-- Interface.HasOrder._._.HasPreorder.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_78 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8804''8743''8777''8658''60'_78 v3 v4 v5 v6
du_'8804''8743''8777''8658''60'_78 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_78 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_1724
                     (coe d_'8804''8660''60''8744''8776'_46 v0 v1 v2) v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v7
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                  -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_112 = erased
-- Interface.HasOrder._._.HasDecPreorder
d_HasDecPreorder_152 a0 a1 a2 = ()
data T_HasDecPreorder_152
  = C_HasDecPreorder'46'constructor_9223 T_HasPreorder_18
                                         (AgdaAny ->
                                          AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                         (AgdaAny ->
                                          AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Interface.HasOrder._._.HasDecPreorder.hasPreorder
d_hasPreorder_160 :: T_HasDecPreorder_152 -> T_HasPreorder_18
d_hasPreorder_160 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9223 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPreorder.dec-≤
d_dec'45''8804'_162 ::
  T_HasDecPreorder_152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_162 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9223 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPreorder.dec-<
d_dec'45''60'_164 ::
  T_HasDecPreorder_152 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_164 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_9223 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder
d_HasPartialOrder_166 a0 a1 a2 = ()
data T_HasPartialOrder_166
  = C_HasPartialOrder'46'constructor_9541 T_HasPreorder_18
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Interface.HasOrder._._.HasPartialOrder.hasPreorder
d_hasPreorder_172 :: T_HasPartialOrder_166 -> T_HasPreorder_18
d_hasPreorder_172 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_9541 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder.≤-antisym
d_'8804''45'antisym_174 ::
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_174 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_9541 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder.≤-isPartialOrder
d_'8804''45'isPartialOrder_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_176 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_176 v3
du_'8804''45'isPartialOrder_176 ::
  T_HasPartialOrder_166 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_38 (coe d_hasPreorder_172 (coe v0)))
      (coe d_'8804''45'antisym_174 (coe v0))
-- Interface.HasOrder._._.HasPartialOrder.<-asymmetric
d_'60''45'asymmetric_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_178 = erased
-- Interface.HasOrder._._.HasPartialOrder.<-trans
d_'60''45'trans_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_192 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'60''45'trans_192 v3 v4 v5 v6 v7 v8
du_'60''45'trans_192 ::
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_192 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''8743''8777''8658''60'_78 (coe d_hasPreorder_172 (coe v0))
      (coe v1) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (d_'8804''45'isPreorder_38 (coe d_hasPreorder_172 (coe v0))) v1 v2
            v3
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_68 (coe d_hasPreorder_172 (coe v0))
                  (coe v1) (coe v2) (coe v4)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_68 (coe d_hasPreorder_172 (coe v0))
                  (coe v2) (coe v3) (coe v5))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'60''8658''8804''8743''8777'_68 (coe d_hasPreorder_172 (coe v0))
                    (coe v2) (coe v3) (coe v5))
                 (coe
                    d_'8804''45'antisym_174 v0 v2 v3
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          du_'60''8658''8804''8743''8777'_68 (coe d_hasPreorder_172 (coe v0))
                          (coe v2) (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                       (d_'8804''45'isPreorder_38 (coe d_hasPreorder_172 (coe v0))) v3 v1
                       v2
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1726
                          (coe
                             d_'8804''8660''60''8744''8776'_46 (d_hasPreorder_172 (coe v0)) v3
                             v1)
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                   (coe d_'8804''45'isPreorder_38 (coe d_hasPreorder_172 (coe v0))))
                                v1 v3 v6)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_'60''8658''8804''8743''8777'_68 (coe d_hasPreorder_172 (coe v0))
                             (coe v1) (coe v2) (coe v4))))))))
-- Interface.HasOrder._._.HasPartialOrder.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_210 = erased
-- Interface.HasOrder._._.HasDecPartialOrder
d_HasDecPartialOrder_220 a0 a1 a2 = ()
data T_HasDecPartialOrder_220
  = C_HasDecPartialOrder'46'constructor_19719 T_HasPartialOrder_166
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Interface.HasOrder._._.HasDecPartialOrder.hasPartialOrder
d_hasPartialOrder_228 ::
  T_HasDecPartialOrder_220 -> T_HasPartialOrder_166
d_hasPartialOrder_228 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19719 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPartialOrder.dec-≤
d_dec'45''8804'_230 ::
  T_HasDecPartialOrder_220 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_230 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19719 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPartialOrder.dec-<
d_dec'45''60'_232 ::
  T_HasDecPartialOrder_220 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_232 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_19719 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._.HasPreorder≡
d_HasPreorder'8801'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasPreorder'8801'_234 = erased
-- Interface.HasOrder._.HasDecPreorder≡
d_HasDecPreorder'8801'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasDecPreorder'8801'_236 = erased
-- Interface.HasOrder._.HasPartialOrder≡
d_HasPartialOrder'8801'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasPartialOrder'8801'_238 = erased
-- Interface.HasOrder._.HasDecPartialOrder≡
d_HasDecPartialOrder'8801'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()
d_HasDecPartialOrder'8801'_240 = erased
-- Interface.HasOrder._._<_
d__'60'__244 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'60'__244 = erased
-- Interface.HasOrder._._<?_
d__'60''63'__246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__246 ~v0 ~v1 ~v2 ~v3 = du__'60''63'__246
du__'60''63'__246 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__246 = coe du__'60''63'__62
-- Interface.HasOrder._._>_
d__'62'__248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'62'__248 = erased
-- Interface.HasOrder._._≤_
d__'8804'__250 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8804'__250 = erased
-- Interface.HasOrder._._≤?_
d__'8804''63'__252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__252 ~v0 ~v1 ~v2 ~v3 = du__'8804''63'__252
du__'8804''63'__252 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__252 = coe du__'8804''63'__60
-- Interface.HasOrder._._≥_
d__'8805'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8805'__254 = erased
-- Interface.HasOrder._.<-irrefl
d_'60''45'irrefl_256 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_256 = erased
-- Interface.HasOrder._.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_258 ~v0 ~v1 ~v2 v3
  = du_'60''8658''8804''8743''8777'_258 v3
du_'60''8658''8804''8743''8777'_258 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_258 v0
  = coe du_'60''8658''8804''8743''8777'_68 (coe v0)
-- Interface.HasOrder._.isEquivalence
d_isEquivalence_260 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_260 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_262 = erased
-- Interface.HasOrder._.≤-isPreorder
d_'8804''45'isPreorder_264 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_264 v0
  = coe d_'8804''45'isPreorder_38 (coe v0)
-- Interface.HasOrder._.refl
d_refl_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny
d_refl_266 ~v0 ~v1 ~v2 v3 = du_refl_266 v3
du_refl_266 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny
du_refl_266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.trans
d_trans_268 ::
  T_HasPreorder_18 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_268 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_270 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8804''8660''60''8744''8776'_270 v0
  = coe d_'8804''8660''60''8744''8776'_46 (coe v0)
-- Interface.HasOrder._.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_272 ~v0 ~v1 ~v2 v3
  = du_'8804''8743''8777''8658''60'_272 v3
du_'8804''8743''8777''8658''60'_272 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_272 v0
  = coe du_'8804''8743''8777''8658''60'_78 (coe v0)
-- Interface.HasOrder._.<-asymmetric
d_'60''45'asymmetric_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_276 = erased
-- Interface.HasOrder._.<-trans
d_'60''45'trans_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_278 ~v0 ~v1 ~v2 v3 = du_'60''45'trans_278 v3
du_'60''45'trans_278 ::
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_278 v0 = coe du_'60''45'trans_192 (coe v0)
-- Interface.HasOrder._.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_280 = erased
-- Interface.HasOrder._.≤-antisym
d_'8804''45'antisym_282 ::
  T_HasPartialOrder_166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_282 v0 = coe d_'8804''45'antisym_174 (coe v0)
-- Interface.HasOrder._.≤-isPartialOrder
d_'8804''45'isPartialOrder_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_166 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_284 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_284 v3
du_'8804''45'isPartialOrder_284 ::
  T_HasPartialOrder_166 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8804''45'isPartialOrder_284 v0
  = coe du_'8804''45'isPartialOrder_176 (coe v0)
-- Interface.HasOrder._.dec-<
d_dec'45''60'_288 ::
  T_HasDecPartialOrder_220 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''60'_288 v0 = coe d_dec'45''60'_232 (coe v0)
-- Interface.HasOrder._.dec-≤
d_dec'45''8804'_290 ::
  T_HasDecPartialOrder_220 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_dec'45''8804'_290 v0 = coe d_dec'45''8804'_230 (coe v0)
-- Interface.HasOrder._._._.hasPreorderFromNonStrict
d_hasPreorderFromNonStrict_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_18
d_hasPreorderFromNonStrict_362 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hasPreorderFromNonStrict_362 v4 v5
du_hasPreorderFromNonStrict_362 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_18
du_hasPreorderFromNonStrict_362 v0 v1
  = coe
      C_HasPreorder'46'constructor_851 v0
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
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
-- Interface.HasOrder._._._.hasPartialOrderFromNonStrict
d_hasPartialOrderFromNonStrict_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_166
d_hasPartialOrderFromNonStrict_382 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_hasPartialOrderFromNonStrict_382 v4 v5 v6
du_hasPartialOrderFromNonStrict_382 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_166
du_hasPartialOrderFromNonStrict_382 v0 v1 v2
  = coe
      C_HasPartialOrder'46'constructor_9541
      (coe du_hasPreorderFromNonStrict_362 (coe v0) (coe v1)) (coe v2)
-- Interface.HasOrder._._._.hasPreorderFromStrictPartialOrder
d_hasPreorderFromStrictPartialOrder_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_18
d_hasPreorderFromStrictPartialOrder_438 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictPartialOrder_438 v4
du_hasPreorderFromStrictPartialOrder_438 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPreorder_18
du_hasPreorderFromStrictPartialOrder_438 v0
  = coe
      C_HasPreorder'46'constructor_851
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_isPreorder'8322'_350
         (coe v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 (coe (\ v3 -> v3))
           (coe (\ v3 -> v3)))
-- Interface.HasOrder._._._.hasPartialOrderFromStrictPartialOrder
d_hasPartialOrderFromStrictPartialOrder_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_166
d_hasPartialOrderFromStrictPartialOrder_442 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictPartialOrder_442 v4
du_hasPartialOrderFromStrictPartialOrder_442 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290 ->
  T_HasPartialOrder_166
du_hasPartialOrderFromStrictPartialOrder_442 v0
  = coe
      C_HasPartialOrder'46'constructor_9541
      (coe du_hasPreorderFromStrictPartialOrder_438 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_antisym_30
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_302
            (coe v0)))
-- Interface.HasOrder._._._.spo
d_spo_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_spo_450 ~v0 ~v1 ~v2 ~v3 v4 = du_spo_450 v4
du_spo_450 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
du_spo_450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_542
      (coe v0)
-- Interface.HasOrder._._._.hasPreorderFromStrictTotalOrder
d_hasPreorderFromStrictTotalOrder_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_18
d_hasPreorderFromStrictTotalOrder_452 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictTotalOrder_452 v4
du_hasPreorderFromStrictTotalOrder_452 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPreorder_18
du_hasPreorderFromStrictTotalOrder_452 v0
  = coe
      du_hasPreorderFromStrictPartialOrder_438 (coe du_spo_450 (coe v0))
-- Interface.HasOrder._._._.hasPartialOrderFromStrictTotalOrder
d_hasPartialOrderFromStrictTotalOrder_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_166
d_hasPartialOrderFromStrictTotalOrder_454 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictTotalOrder_454 v4
du_hasPartialOrderFromStrictTotalOrder_454 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534 ->
  T_HasPartialOrder_166
du_hasPartialOrderFromStrictTotalOrder_454 v0
  = coe
      du_hasPartialOrderFromStrictPartialOrder_442
      (coe du_spo_450 (coe v0))
