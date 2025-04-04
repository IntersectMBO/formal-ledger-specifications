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

module MAlonzo.Code.Data.Product.Function.NonDependent.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles

-- Data.Product.Function.NonDependent.Setoid.proj₁ₛ
d_proj'8321''8347'_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_proj'8321''8347'_38 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_proj'8321''8347'_38
du_proj'8321''8347'_38 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_proj'8321''8347'_38
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)))
      (coe
         (\ v0 v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Data.Product.Function.NonDependent.Setoid.proj₂ₛ
d_proj'8322''8347'_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_proj'8322''8347'_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_proj'8322''8347'_40
du_proj'8322''8347'_40 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_proj'8322''8347'_40
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe (\ v0 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v0)))
      (coe
         (\ v0 v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
-- Data.Product.Function.NonDependent.Setoid.<_,_>ₛ
d_'60'_'44'_'62''8347'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_'60'_'44'_'62''8347'_42 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                          v10
  = du_'60'_'44'_'62''8347'_42 v9 v10
du_'60'_'44'_'62''8347'_42 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'60'_'44'_'62''8347'_42 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v1)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
              (coe MAlonzo.Code.Function.Bundles.d_cong_762 v0 v2 v3)
              (coe MAlonzo.Code.Function.Bundles.d_cong_762 v1 v2 v3)))
-- Data.Product.Function.NonDependent.Setoid.swapₛ
d_swap'8347'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_swap'8347'_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_swap'8347'_52
du_swap'8347'_52 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_swap'8347'_52
  = coe
      du_'60'_'44'_'62''8347'_42 (coe du_proj'8322''8347'_40)
      (coe du_proj'8321''8347'_38)
-- Data.Product.Function.NonDependent.Setoid._×-function_
d__'215''45'function__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d__'215''45'function__54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 v12 v13
  = du__'215''45'function__54 v12 v13
du__'215''45'function__54 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du__'215''45'function__54 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_760 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_cong_762 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_cong_762 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
-- Data.Product.Function.NonDependent.Setoid._×-equivalence_
d__'215''45'equivalence__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d__'215''45'equivalence__64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 v12 v13
  = du__'215''45'equivalence__64 v12 v13
du__'215''45'equivalence__64 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du__'215''45'equivalence__64 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_1820 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_1820 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_from_1822 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_from_1822 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_to'45'cong_1824 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_to'45'cong_1824 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_from'45'cong_1826 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_from'45'cong_1826 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
-- Data.Product.Function.NonDependent.Setoid._×-injection_
d__'215''45'injection__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
d__'215''45'injection__74 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13
  = du__'215''45'injection__74 v12 v13
du__'215''45'injection__74 ::
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
du__'215''45'injection__74 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_9107
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_828 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_828 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_cong_830 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_cong_830 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_injective_832 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_injective_832 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
-- Data.Product.Function.NonDependent.Setoid._×-surjection_
d__'215''45'surjection__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
d__'215''45'surjection__84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13
  = du__'215''45'surjection__84 v12 v13
du__'215''45'surjection__84 ::
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
du__'215''45'surjection__84 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11713
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_902 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_902 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_cong_904 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_cong_904 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_zip_198
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
              (coe
                 (\ v3 v4 v5 v6 v7 v8 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe
                         v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                      (coe
                         v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)))))
              (coe
                 MAlonzo.Code.Function.Bundles.d_surjective_906 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
              (coe
                 MAlonzo.Code.Function.Bundles.d_surjective_906 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))))
-- Data.Product.Function.NonDependent.Setoid._×-bijection_
d__'215''45'bijection__102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d__'215''45'bijection__102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13
  = du__'215''45'bijection__102 v12 v13
du__'215''45'bijection__102 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du__'215''45'bijection__102 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15877
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_986 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_986 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_cong_988 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_cong_988 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.Base.du_map_128
                 (coe
                    MAlonzo.Code.Function.Bundles.du_injective_992 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Function.Bundles.du_injective_992 (coe v1)
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
         (coe
            (\ v2 ->
               case coe v2 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                   -> coe
                        MAlonzo.Code.Data.Product.Base.du_zip_198
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
                        (coe
                           (\ v5 v6 v7 v8 v9 v10 ->
                              case coe v10 of
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                  -> coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                          v11)
                                       (coe
                                          v8 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                                          v12)
                                _ -> MAlonzo.RTE.mazUnreachableError))
                        (coe MAlonzo.Code.Function.Bundles.du_surjective_994 v0 v3)
                        (coe MAlonzo.Code.Function.Bundles.du_surjective_994 v1 v4)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Data.Product.Function.NonDependent.Setoid._×-leftInverse_
d__'215''45'leftInverse__128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d__'215''45'leftInverse__128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 v12 v13
  = du__'215''45'leftInverse__128 v12 v13
du__'215''45'leftInverse__128 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du__'215''45'leftInverse__128 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_LeftInverse'46'constructor_30891
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_1904 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_1904 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_from_1906 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_from_1906 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_to'45'cong_1908 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_to'45'cong_1908 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_from'45'cong_1910 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_from'45'cong_1910 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Function.Bundles.d_inverse'737'_1912 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Bundles.d_inverse'737'_1912 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
-- Data.Product.Function.NonDependent.Setoid._×-rightInverse_
d__'215''45'rightInverse__140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d__'215''45'rightInverse__140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13
  = du__'215''45'rightInverse__140 v12 v13
du__'215''45'rightInverse__140 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du__'215''45'rightInverse__140 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_RightInverse'46'constructor_35773
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_1996 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_1996 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_from_1998 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_from_1998 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_to'45'cong_2000 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_to'45'cong_2000 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_from'45'cong_2002 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_from'45'cong_2002 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Function.Bundles.d_inverse'691'_2004 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 MAlonzo.Code.Function.Bundles.d_inverse'691'_2004 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
-- Data.Product.Function.NonDependent.Setoid._×-inverse_
d__'215''45'inverse__152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d__'215''45'inverse__152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 v12 v13
  = du__'215''45'inverse__152 v12 v13
du__'215''45'inverse__152 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du__'215''45'inverse__152 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_39905
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_to_2080 (coe v1))))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128
         (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
         (coe (\ v2 -> MAlonzo.Code.Function.Bundles.d_from_2082 (coe v1))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe
                 MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Function.Bundles.du_inverse'737'_2090 v0
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 (coe
                    MAlonzo.Code.Function.Bundles.du_inverse'737'_2090 v1
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Function.Bundles.du_inverse'691'_2092 v0
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 (coe
                    MAlonzo.Code.Function.Bundles.du_inverse'691'_2092 v1
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
-- Data.Product.Function.NonDependent.Setoid._×-left-inverse_
d__'215''45'left'45'inverse__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d__'215''45'left'45'inverse__166 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11 v12 v13
  = coe du__'215''45'leftInverse__128 v12 v13
