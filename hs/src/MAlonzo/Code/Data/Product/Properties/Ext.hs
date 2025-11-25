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

module MAlonzo.Code.Data.Product.Properties.Ext where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Function.Dependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax

-- Data.Product.Properties.Ext.∃-cong′
d_'8707''45'cong'8242'_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_'8707''45'cong'8242'_38 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_'8707''45'cong'8242'_38 v3
du_'8707''45'cong'8242'_38 ::
  MAlonzo.Code.Function.Related.Propositional.T_Kind_6 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
du_'8707''45'cong'8242'_38 v0
  = coe
      MAlonzo.Code.Data.Product.Function.Dependent.Propositional.du_cong_382
      (coe v0)
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8596'_2526 (coe (\ v1 -> v1))
         (coe (\ v1 -> v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 -> v3)) (coe (\ v1 v2 v3 -> v3))))
-- Data.Product.Properties.Ext.∃-≡
d_'8707''45''8801'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8707''45''8801'_48 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8707''45''8801'_48 v4
du_'8707''45''8801'_48 ::
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8707''45''8801'_48 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v1))))
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> case coe v3 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5 -> coe v5
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Product.Properties.Ext.∃-distrib-⊎
d_'8707''45'distrib'45''8846'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'8707''45'distrib'45''8846'_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8707''45'distrib'45''8846'_72
du_'8707''45'distrib'45''8846'_72 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'8707''45'distrib'45''8846'_72
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2542
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))))
                 (coe
                    MAlonzo.Code.Function.Base.du__'8728''8242'__216
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)))))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)))
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))))
-- Data.Product.Properties.Ext.×-distribˡ-⊎'
d_'215''45'distrib'737''45''8846'''_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2122
d_'215''45'distrib'737''45''8846'''_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45'distrib'737''45''8846'''_90
du_'215''45'distrib'737''45''8846'''_90 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2122
du_'215''45'distrib'737''45''8846'''_90
  = coe du_'8707''45'distrib'45''8846'_72
-- Data.Product.Properties.Ext.×-⇔-swap
d_'215''45''8660''45'swap_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'215''45''8660''45'swap_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'215''45''8660''45'swap_92
du_'215''45''8660''45'swap_92 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'215''45''8660''45'swap_92
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased)
      (coe
         MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0))))))
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))))))
