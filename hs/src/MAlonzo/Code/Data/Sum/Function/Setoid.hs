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

module MAlonzo.Code.Data.Sum.Function.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles

-- Data.Sum.Function.Setoid.inj₁ₛ
d_inj'8321''8347'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_inj'8321''8347'_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_inj'8321''8347'_52
du_inj'8321''8347'_52 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_inj'8321''8347'_52
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v2)
-- Data.Sum.Function.Setoid.inj₂ₛ
d_inj'8322''8347'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_inj'8322''8347'_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_inj'8322''8347'_54
du_inj'8322''8347'_54 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_inj'8322''8347'_54
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v2)
-- Data.Sum.Function.Setoid.[_,_]ₛ
d_'91'_'44'_'93''8347'_56 ::
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
d_'91'_'44'_'93''8347'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                          v10
  = du_'91'_'44'_'93''8347'_56 v9 v10
du_'91'_'44'_'93''8347'_56 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'91'_'44'_'93''8347'_56 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v1)))
      (coe du_'46'extendedlambda0_66 (coe v0) (coe v1))
-- Data.Sum.Function.Setoid._..extendedlambda0
d_'46'extendedlambda0_66 ::
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
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  AgdaAny
d_'46'extendedlambda0_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
                         v11 v12 v13
  = du_'46'extendedlambda0_66 v9 v10 v11 v12 v13
du_'46'extendedlambda0_66 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  AgdaAny
du_'46'extendedlambda0_66 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe MAlonzo.Code.Function.Bundles.d_cong_762 v0 v8 v9 v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe MAlonzo.Code.Function.Bundles.d_cong_762 v1 v8 v9 v7
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid.swapₛ
d_swap'8347'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_swap'8347'_72 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_swap'8347'_72
du_swap'8347'_72 :: MAlonzo.Code.Function.Bundles.T_Func_754
du_swap'8347'_72
  = coe
      du_'91'_'44'_'93''8347'_56 (coe du_inj'8322''8347'_54)
      (coe du_inj'8321''8347'_52)
-- Data.Sum.Function.Setoid.⊎-injective
d_'8846''45'injective_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'8846''45'injective_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 v18 v19 v20 v21 v22
  = du_'8846''45'injective_78 v18 v19 v20 v21 v22
du_'8846''45'injective_78 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'8846''45'injective_78 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                           (coe v0 v5 v6 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                           (coe v1 v5 v6 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid.⊎-strictlySurjective
d_'8846''45'strictlySurjective_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45'strictlySurjective_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 v14 v15
  = du_'8846''45'strictlySurjective_104 v14 v15
du_'8846''45'strictlySurjective_104 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45'strictlySurjective_104 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88))
              (coe v0 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
              (coe
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94))
              (coe v1 v2)))
-- Data.Sum.Function.Setoid.⊎-surjective
d_'8846''45'surjective_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8846''45'surjective_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 v18 v19
  = du_'8846''45'surjective_114 v18 v19
du_'8846''45'surjective_114 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8846''45'surjective_114 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
              (\ v3 v4 v5 v6 -> coe du_'46'extendedlambda0_120 v4 v5 v6)
              (coe v0 v2)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_128
              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
              (\ v3 v4 v5 v6 -> coe du_'46'extendedlambda1_126 v4 v5 v6)
              (coe v1 v2)))
-- Data.Sum.Function.Setoid..extendedlambda0
d_'46'extendedlambda0_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda0_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 v22 v23
                          v24
  = du_'46'extendedlambda0_120 v22 v23 v24
du_'46'extendedlambda0_120 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda0_120 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
               -> coe
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                    (coe v0 v6 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid..extendedlambda1
d_'46'extendedlambda1_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda1_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 v22 v23
                          v24
  = du_'46'extendedlambda1_126 v22 v23 v24
du_'46'extendedlambda1_126 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda1_126 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
               -> coe
                    MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                    (coe v0 v6 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid._⊎-function_
d__'8846''45'function__132 ::
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
d__'8846''45'function__132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 v12 v13
  = du__'8846''45'function__132 v12 v13
du__'8846''45'function__132 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du__'8846''45'function__132 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_cong_762 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_cong_762 (coe v1)))
-- Data.Sum.Function.Setoid._⊎-equivalence_
d__'8846''45'equivalence__142 ::
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
d__'8846''45'equivalence__142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13
  = du__'8846''45'equivalence__142 v12 v13
du__'8846''45'equivalence__142 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du__'8846''45'equivalence__142 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_1820 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_1820 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_from_1822 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_1822 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1824 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1824 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1826 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1826 (coe v1)))
-- Data.Sum.Function.Setoid._⊎-injection_
d__'8846''45'injection__152 ::
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
d__'8846''45'injection__152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 v12 v13
  = du__'8846''45'injection__152 v12 v13
du__'8846''45'injection__152 ::
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
du__'8846''45'injection__152 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_9107
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_828 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_828 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_cong_830 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_cong_830 (coe v1)))
      (coe
         du_'8846''45'injective_78
         (coe MAlonzo.Code.Function.Bundles.d_injective_832 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_injective_832 (coe v1)))
-- Data.Sum.Function.Setoid._⊎-surjection_
d__'8846''45'surjection__162 ::
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
d__'8846''45'surjection__162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 v12 v13
  = du__'8846''45'surjection__162 v12 v13
du__'8846''45'surjection__162 ::
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
du__'8846''45'surjection__162 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11713
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_902 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_902 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_cong_904 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_cong_904 (coe v1)))
      (coe
         du_'8846''45'surjective_114
         (coe MAlonzo.Code.Function.Bundles.d_surjective_906 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_surjective_906 (coe v1)))
-- Data.Sum.Function.Setoid._⊎-bijection_
d__'8846''45'bijection__172 ::
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
d__'8846''45'bijection__172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 v12 v13
  = du__'8846''45'bijection__172 v12 v13
du__'8846''45'bijection__172 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du__'8846''45'bijection__172 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15877
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_986 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_986 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_cong_988 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_cong_988 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8846''45'injective_78
            (coe MAlonzo.Code.Function.Bundles.du_injective_992 (coe v0))
            (coe MAlonzo.Code.Function.Bundles.du_injective_992 (coe v1)))
         (coe
            du_'8846''45'surjective_114
            (coe MAlonzo.Code.Function.Bundles.du_surjective_994 (coe v0))
            (coe MAlonzo.Code.Function.Bundles.du_surjective_994 (coe v1))))
-- Data.Sum.Function.Setoid._⊎-leftInverse_
d__'8846''45'leftInverse__182 ::
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
d__'8846''45'leftInverse__182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 ~v11 v12 v13
  = du__'8846''45'leftInverse__182 v12 v13
du__'8846''45'leftInverse__182 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du__'8846''45'leftInverse__182 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_LeftInverse'46'constructor_30891
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_1904 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_1904 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_from_1906 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_1906 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1908 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1908 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1910 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1910 (coe v1)))
      (coe du_'46'extendedlambda2_192 (coe v0) (coe v1))
-- Data.Sum.Function.Setoid._..extendedlambda2
d_'46'extendedlambda2_192 ::
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
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda2_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13 v14 v15 v16
  = du_'46'extendedlambda2_192 v12 v13 v14 v15 v16
du_'46'extendedlambda2_192 ::
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda2_192 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                           (coe MAlonzo.Code.Function.Bundles.d_inverse'737'_1912 v0 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                           (coe MAlonzo.Code.Function.Bundles.d_inverse'737'_1912 v1 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid._⊎-rightInverse_
d__'8846''45'rightInverse__198 ::
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
d__'8846''45'rightInverse__198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               ~v9 ~v10 ~v11 v12 v13
  = du__'8846''45'rightInverse__198 v12 v13
du__'8846''45'rightInverse__198 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du__'8846''45'rightInverse__198 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_RightInverse'46'constructor_35773
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_1996 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_1996 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_from_1998 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_1998 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2000 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2000 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2002 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2002 (coe v1)))
      (coe du_'46'extendedlambda2_208 (coe v0) (coe v1))
-- Data.Sum.Function.Setoid._..extendedlambda2
d_'46'extendedlambda2_208 ::
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
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda2_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13 v14 v15 v16
  = du_'46'extendedlambda2_208 v12 v13 v14 v15 v16
du_'46'extendedlambda2_208 ::
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda2_208 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                           (coe MAlonzo.Code.Function.Bundles.d_inverse'691'_2004 v0 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                           (coe MAlonzo.Code.Function.Bundles.d_inverse'691'_2004 v1 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid._⊎-inverse_
d__'8846''45'inverse__214 ::
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
d__'8846''45'inverse__214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13
  = du__'8846''45'inverse__214 v12 v13
du__'8846''45'inverse__214 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du__'8846''45'inverse__214 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_39905
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Base.du_map_84
         (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v1)))
      (coe
         MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du_map_100
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_'46'extendedlambda2_224 (coe v0) (coe v1))
         (coe du_'46'extendedlambda3_230 (coe v0) (coe v1)))
-- Data.Sum.Function.Setoid._..extendedlambda2
d_'46'extendedlambda2_224 ::
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
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda2_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13 v14 v15 v16
  = du_'46'extendedlambda2_224 v12 v13 v14 v15 v16
du_'46'extendedlambda2_224 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda2_224 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                           (coe
                              MAlonzo.Code.Function.Bundles.du_inverse'737'_2090 v0 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                           (coe
                              MAlonzo.Code.Function.Bundles.du_inverse'737'_2090 v1 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid._..extendedlambda3
d_'46'extendedlambda3_230 ::
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
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
d_'46'extendedlambda3_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 ~v11 v12 v13 v14 v15 v16
  = du_'46'extendedlambda3_230 v12 v13 v14 v15 v16
du_'46'extendedlambda3_230 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70 ->
  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.T_Pointwise_70
du_'46'extendedlambda3_230 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8321'_88
                           (coe
                              MAlonzo.Code.Function.Bundles.du_inverse'691'_2092 v0 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v4 of
             MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.C_inj'8322'_94
                           (coe
                              MAlonzo.Code.Function.Bundles.du_inverse'691'_2092 v1 v5 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Sum.Function.Setoid._⊎-left-inverse_
d__'8846''45'left'45'inverse__236 ::
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
d__'8846''45'left'45'inverse__236 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                  v11 v12 v13
  = coe du__'8846''45'leftInverse__182 v12 v13
