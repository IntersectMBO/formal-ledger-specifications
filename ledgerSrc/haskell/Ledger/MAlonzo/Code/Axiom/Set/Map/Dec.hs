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

module MAlonzo.Code.Axiom.Set.Map.Dec where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Map.Dec._.incl-set
d_incl'45'set_14 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> AgdaAny -> AgdaAny
d_incl'45'set_14 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_incl'45'set_1668 (coe v0) v2 v3
-- Axiom.Set.Map.Dec._._∈_
d__'8712'__28 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8712'__28 = erased
-- Axiom.Set.Map.Dec._._∪_
d__'8746'__32 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__32 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3
-- Axiom.Set.Map.Dec._._≡ᵉ_
d__'8801''7497'__34 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__34 = erased
-- Axiom.Set.Map.Dec._._⊆_
d__'8838'__38 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__38 = erased
-- Axiom.Set.Map.Dec._.FinSet
d_FinSet_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 -> () -> ()
d_FinSet_46 = erased
-- Axiom.Set.Map.Dec._.spec-∈
d_spec'45''8712'_90 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 -> () -> ()
d_spec'45''8712'_90 = erased
-- Axiom.Set.Map.Dec._.dom
d_dom_150 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_150 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_336
      (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
-- Axiom.Set.Map.Dec._.dom∈
d_dom'8712'_152 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_152 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420
      (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4
-- Axiom.Set.Map.Dec._._ˢ
d__'738'_156 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_156 ~v0 = du__'738'_156
du__'738'_156 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_156 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 v2
-- Axiom.Set.Map.Dec._.Map
d_Map_174 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 -> () -> () -> ()
d_Map_174 = erased
-- Axiom.Set.Map.Dec._.left-unique
d_left'45'unique_192 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () -> () -> AgdaAny -> ()
d_left'45'unique_192 = erased
-- Axiom.Set.Map.Dec.Lookupᵐᵈ.unionThese
d_unionThese_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_340 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_unionThese_340 v0 v5 v6 v7 v8 v9
du_unionThese_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_340 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0 erased v1 v4
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                 (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                 (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0 erased v1 v4
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                    (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v3))) in
       coe
         (case coe v6 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
              -> if coe v8
                   then case coe v9 of
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                            -> case coe v7 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                   -> if coe v11
                                        then case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                 -> coe
                                                      MAlonzo.Code.Data.These.Base.C_these_52
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                            (coe v0))
                                                         (coe v2) (coe v4) (coe v10))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                            (coe v0))
                                                         (coe v3) (coe v4) (coe v13))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v12)
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.C_this_48
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                     (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                     (coe v2) (coe v4) (coe v10)))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else coe
                          seq (coe v9)
                          (case coe v7 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                               -> if coe v10
                                    then case coe v11 of
                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                             -> coe
                                                  MAlonzo.Code.Data.These.Base.C_that_50
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                     (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                     (coe v3) (coe v4) (coe v12))
                                           _ -> MAlonzo.RTE.mazUnreachableError
                                    else coe
                                           seq (coe v11)
                                           (coe
                                              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                              (coe
                                                 (\ v12 ->
                                                    coe
                                                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                              (coe
                                                 (\ v12 ->
                                                    coe
                                                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                              (coe
                                                 MAlonzo.Code.Function.Bundles.d_from_1726
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
                                                    (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_196
                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe v0))
                                                          erased erased
                                                          (\ v12 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v12))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_196
                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe v0))
                                                          erased erased
                                                          (\ v12 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v12))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v3))))
                                                    (coe v4))
                                                 v5))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ.unionWith
d_unionWith_402 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_402 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_unionWith_402 v0 v6 v7 v8 v9
du_unionWith_402 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_402 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       du_m''''_424 (coe v0) (coe v1) (coe v2) (coe v5) erased (coe v7)
                       erased)
                    erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._.d
d_d_422 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny
d_d_422 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 v10 ~v11
  = du_d_422 v0 v8 v10
du_d_422 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_d_422 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom_336
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom_336
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2)
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._.m''
d_m''''_424 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny
d_m''''_424 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_m''''_424 v0 v6 v7 v8 v9 v10 v11
du_m''''_424 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny
du_m''''_424 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380
      (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
      (\ v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
           (coe
              v2
              (coe
                 du_unionThese_340 (coe v0) (coe v1)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))))
      (coe
         MAlonzo.Code.Axiom.Set.du_incl'45'set_1668 (coe v0) (coe v1)
         (coe du_d_422 (coe v0) (coe v3) (coe v5)))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._.helper
d_helper_432 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_432 = erased
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._∪⁺_
d__'8746''8314'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__494 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8746''8314'__494 v0 v4 v5
du__'8746''8314'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__494 v0 v1 v2
  = coe
      du_unionWith_402 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v3 -> v3))
         (coe (\ v3 -> v3))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
               (coe v1))))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._.aggregate₊
d_aggregate'8330'_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_496 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_aggregate'8330'_496 v0 v4 v5 v6
du_aggregate'8330'_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_496 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Base.du_foldl_256
                    (coe
                       (\ v8 v9 ->
                          coe
                            du__'8746''8314'__494 v0 v1 v2 v8
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                               (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) (coe v9))))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
                       (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
                    (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._.∪dom-lookup
d_'8746'dom'45'lookup_514 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_514 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8746'dom'45'lookup_514 v0 v4 v5 v6 v7 v8
du_'8746'dom'45'lookup_514 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_514 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
             (coe
                MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v8 -> v8))
                (coe (\ v8 -> v8))
                (coe
                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                   (coe
                      MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
                      (coe v1)))
                (coe
                   du_unionThese_340 (coe v0) (coe v2) (coe v3) (coe v4) (coe v6)
                   (coe v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_dom'8746''8314''8838''8746'dom_520 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9
  = du_dom'8746''8314''8838''8746'dom_520 v0 v4 v5 v6 v7 v8 v9
du_dom'8746''8314''8838''8746'dom_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_dom'8746''8314''8838''8746'dom_520 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8712''45'dom'8746''8314'_532 (coe v0) (coe v1) (coe v2)
            (coe v3) (coe v4) (coe v5) (coe v6)))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._._.∈-dom∪⁺
d_'8712''45'dom'8746''8314'_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'dom'8746''8314'_532 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_'8712''45'dom'8746''8314'_532 v0 v4 v5 v6 v7 v8 v9
du_'8712''45'dom'8746''8314'_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'dom'8746''8314'_532 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
         (coe
            MAlonzo.Code.Axiom.Set.du_incl'45'set_1668 (coe v0) (coe v2)
            (coe
               du_d_422 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
         (coe
            (\ v7 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                 (coe
                    MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v8 -> v8))
                    (coe (\ v8 -> v8))
                    (coe
                       MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                       (coe
                          MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
                          (coe v1)))
                    (coe
                       du_unionThese_340 (coe v0) (coe v2) (coe v3) (coe v4)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1726
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420
                     (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                        (coe du__'8746''8314'__494 v0 v1 v2 v3 v4))
                     (coe v5))
                  v6))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1726
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420
               (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                  (coe du__'8746''8314'__494 v0 v1 v2 v3 v4))
               (coe v5))
            v6))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_536 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8746'dom'8838'dom'8746''8314'_536 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9
  = du_'8746'dom'8838'dom'8746''8314'_536 v0 v4 v5 v6 v7 v8 v9
du_'8746'dom'8838'dom'8746''8314'_536 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8746'dom'8838'dom'8746''8314'_536 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196
                    (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased erased
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_incl'45'set_1668 (coe v0) (coe v2)
                       (coe
                          MAlonzo.Code.Axiom.Set.du__'8746'__662
                          (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                          (coe
                             MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                             (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v3)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                             (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v4))))))
                 v5)
              (coe
                 MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1690
                 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__662
                    (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                       (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v3)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                       (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v4))))
                 (coe v5) (coe v6)) in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v9 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_to_1724
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420
                          (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_map_380
                             (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                             (\ v12 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                  (coe
                                     MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v13 -> v13))
                                     (coe (\ v13 -> v13))
                                     (coe
                                        MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                        (coe
                                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
                                           (coe v1)))
                                     (let v13
                                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12) in
                                      coe
                                        (let v14
                                               = coe
                                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0
                                                   erased v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v12))
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_replacement_196
                                                         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                         erased erased
                                                         (\ v14 ->
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v14))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v3)))) in
                                         coe
                                           (let v15
                                                  = coe
                                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0
                                                      erased v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v12))
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                               (coe v0))
                                                            erased erased
                                                            (\ v15 ->
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v15))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v4)))) in
                                            coe
                                              (let v16
                                                     = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                         (coe v12) in
                                               coe
                                                 (case coe v14 of
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                      -> if coe v17
                                                           then case coe v18 of
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                    -> case coe v15 of
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                           -> if coe v20
                                                                                then case coe v21 of
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                         -> coe
                                                                                              MAlonzo.Code.Data.These.Base.C_these_52
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 (coe
                                                                                                    v3)
                                                                                                 (coe
                                                                                                    v13)
                                                                                                 (coe
                                                                                                    v19))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 (coe
                                                                                                    v4)
                                                                                                 (coe
                                                                                                    v13)
                                                                                                 (coe
                                                                                                    v22))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                else coe
                                                                                       seq (coe v21)
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.These.Base.C_this_48
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                (coe
                                                                                                   v0))
                                                                                             (coe
                                                                                                v3)
                                                                                             (coe
                                                                                                v13)
                                                                                             (coe
                                                                                                v19)))
                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           else coe
                                                                  seq (coe v18)
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                       -> if coe v19
                                                                            then case coe v20 of
                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                     -> coe
                                                                                          MAlonzo.Code.Data.These.Base.C_that_50
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                (coe
                                                                                                   v0))
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                v13)
                                                                                             (coe
                                                                                                v21))
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            else coe
                                                                                   seq (coe v20)
                                                                                   (coe
                                                                                      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                      (coe
                                                                                         (\ v21 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                      (coe
                                                                                         (\ v21 ->
                                                                                            coe
                                                                                              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                      (coe
                                                                                         MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  erased
                                                                                                  erased
                                                                                                  (\ v21 ->
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          v21))
                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v3))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  erased
                                                                                                  erased
                                                                                                  (\ v21 ->
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          v21))
                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v4))))
                                                                                            (coe
                                                                                               v13))
                                                                                         v16))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))))))
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                   (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_replacement_196
                                         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased erased
                                         (\ v12 ->
                                            coe
                                              MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                              (coe
                                                 (\ v13 ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                         erased
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe v13)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_listing_204
                                                    (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                              (let v13
                                                     = coe
                                                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                         v0 erased v2 v12
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_unions_184
                                                               (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe v0))
                                                               erased
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                        (coe v0))
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                 (coe v0))
                                                                              erased erased
                                                                              (\ v13 ->
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v13))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v3))))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                    (coe v0))
                                                                                 erased erased
                                                                                 (\ v13 ->
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v13))
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v4))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))) in
                                               coe
                                                 (case coe v13 of
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                      -> if coe v14
                                                           then case coe v15 of
                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                    -> coe
                                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe v12) (coe v16))
                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                           else coe
                                                                  seq (coe v15)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_184
                                               (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_204
                                                     (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe v0))
                                                              erased erased
                                                              (\ v12 ->
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v12))
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v3))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe v0))
                                                                 erased erased
                                                                 (\ v12 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v4))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))
                          (coe v5))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                du_'8746'dom'45'lookup_514 (coe v0) (coe v1) (coe v2) (coe v3)
                                (coe v4) (coe v8)))
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_1724
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_388
                                (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_unions_184
                                      (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                            (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased
                                            erased
                                            (\ v12 ->
                                               coe
                                                 MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                 (coe
                                                    (\ v13 ->
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_listing_204
                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                               (coe v0))
                                                            erased
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe v13)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_listing_204
                                                       (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                       erased
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                 (let v13
                                                        = coe
                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                            v0 erased v2 v12
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_unions_184
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                     (coe v0))
                                                                  erased
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                           (coe v0))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                    (coe v0))
                                                                                 erased erased
                                                                                 (\ v13 ->
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v13))
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v3))))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe v0))
                                                                                    erased erased
                                                                                    (\ v13 ->
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe v13))
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe v4))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))) in
                                                  coe
                                                    (case coe v13 of
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                         -> if coe v14
                                                              then case coe v15 of
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                                       -> coe
                                                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe v12) (coe v16))
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              else coe
                                                                     seq (coe v15)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_unions_184
                                                  (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) erased
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                        (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe v0))
                                                                 erased erased
                                                                 (\ v12 ->
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v3))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe v0))
                                                                    erased erased
                                                                    (\ v12 ->
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v4))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))
                                (coe
                                   (\ v12 ->
                                      coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                        (coe
                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                           (coe (\ v13 -> v13)) (coe (\ v13 -> v13))
                                           (coe
                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                              (coe
                                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
                                                 (coe v1)))
                                           (let v13
                                                  = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v12) in
                                            coe
                                              (let v14
                                                     = coe
                                                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                         v0 erased v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v12))
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                               (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe v0))
                                                               erased erased
                                                               (\ v14 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v14))
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v3)))) in
                                               coe
                                                 (let v15
                                                        = coe
                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                            v0 erased v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v12))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                     (coe v0))
                                                                  erased erased
                                                                  (\ v15 ->
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v15))
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v4)))) in
                                                  coe
                                                    (let v16
                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                               (coe v12) in
                                                     coe
                                                       (case coe v14 of
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                            -> if coe v17
                                                                 then case coe v18 of
                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                          -> case coe v15 of
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                                 -> if coe v20
                                                                                      then case coe
                                                                                                  v21 of
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Data.These.Base.C_these_52
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          v3)
                                                                                                       (coe
                                                                                                          v13)
                                                                                                       (coe
                                                                                                          v19))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          v4)
                                                                                                       (coe
                                                                                                          v13)
                                                                                                       (coe
                                                                                                          v22))
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      else coe
                                                                                             seq
                                                                                             (coe
                                                                                                v21)
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.These.Base.C_this_48
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      v3)
                                                                                                   (coe
                                                                                                      v13)
                                                                                                   (coe
                                                                                                      v19)))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 else coe
                                                                        seq (coe v18)
                                                                        (case coe v15 of
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                             -> if coe v19
                                                                                  then case coe
                                                                                              v20 of
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                           -> coe
                                                                                                MAlonzo.Code.Data.These.Base.C_that_50
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      v4)
                                                                                                   (coe
                                                                                                      v13)
                                                                                                   (coe
                                                                                                      v21))
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  else coe
                                                                                         seq
                                                                                         (coe v20)
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                            (coe
                                                                                               (\ v21 ->
                                                                                                  coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                            (coe
                                                                                               (\ v21 ->
                                                                                                  coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                            (coe
                                                                                               MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                           (coe
                                                                                                              v0))
                                                                                                        erased
                                                                                                        erased
                                                                                                        (\ v21 ->
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v21))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v3))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                           (coe
                                                                                                              v0))
                                                                                                        erased
                                                                                                        erased
                                                                                                        (\ v21 ->
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                             (coe
                                                                                                                v21))
                                                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v4))))
                                                                                                  (coe
                                                                                                     v13))
                                                                                               v16))
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                          _ -> MAlonzo.RTE.mazUnreachableError))))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                                   (coe
                                      MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v12 -> v12))
                                      (coe (\ v12 -> v12))
                                      (coe
                                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                         (coe
                                            MAlonzo.Code.Interface.IsCommutativeMonoid.d_semigroup_28
                                            (coe v1)))
                                      (let v12
                                             = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8) in
                                       coe
                                         (let v13
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0
                                                    erased v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8))
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_196
                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe v0))
                                                          erased erased
                                                          (\ v13 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v13))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v3)))) in
                                          coe
                                            (let v14
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 v0
                                                       erased v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v8))
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                (coe v0))
                                                             erased erased
                                                             (\ v14 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v14))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v4)))) in
                                             coe
                                               (let v15
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe v8) in
                                                coe
                                                  (case coe v13 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                       -> if coe v16
                                                            then case coe v17 of
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                            -> if coe v19
                                                                                 then case coe
                                                                                             v20 of
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                          -> coe
                                                                                               MAlonzo.Code.Data.These.Base.C_these_52
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  (coe
                                                                                                     v3)
                                                                                                  (coe
                                                                                                     v12)
                                                                                                  (coe
                                                                                                     v18))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  (coe
                                                                                                     v4)
                                                                                                  (coe
                                                                                                     v12)
                                                                                                  (coe
                                                                                                     v21))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 else coe
                                                                                        seq
                                                                                        (coe v20)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.These.Base.C_this_48
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (coe
                                                                                                 v3)
                                                                                              (coe
                                                                                                 v12)
                                                                                              (coe
                                                                                                 v18)))
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            else coe
                                                                   seq (coe v17)
                                                                   (case coe v14 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                        -> if coe v18
                                                                             then case coe v19 of
                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v20
                                                                                      -> coe
                                                                                           MAlonzo.Code.Data.These.Base.C_that_50
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (coe
                                                                                                 v4)
                                                                                              (coe
                                                                                                 v12)
                                                                                              (coe
                                                                                                 v20))
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             else coe
                                                                                    seq (coe v19)
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                       (coe
                                                                                          (\ v20 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38))
                                                                                       (coe
                                                                                          MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                (coe
                                                                                                   v0))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v20 ->
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v20))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v3))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   erased
                                                                                                   erased
                                                                                                   (\ v20 ->
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           v20))
                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v4))))
                                                                                             (coe
                                                                                                v12))
                                                                                          v15))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v11)))))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_558 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_dom'8746''8314''8660''8746'dom_558 v0 v4 v5 v6 v7 v8
du_dom'8746''8314''8660''8746'dom_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8746''8314''8660''8746'dom_558 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         du_dom'8746''8314''8838''8746'dom_520 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5))
      (coe
         du_'8746'dom'8838'dom'8746''8314'_536 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5))
-- Axiom.Set.Map.Dec.Lookupᵐᵈ._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_562 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_562 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'8746''8314''8801''8746'dom_562 v0 v4 v5 v6 v7
du_dom'8746''8314''8801''8746'dom_562 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_562 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 ->
            MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 du_dom'8746''8314''8660''8746'dom_558 (coe v0) (coe v1) (coe v2)
                 (coe v3) (coe v4) (coe v5))))
      (coe
         (\ v5 ->
            MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 du_dom'8746''8314''8660''8746'dom_558 (coe v0) (coe v1) (coe v2)
                 (coe v3) (coe v4) (coe v5))))
