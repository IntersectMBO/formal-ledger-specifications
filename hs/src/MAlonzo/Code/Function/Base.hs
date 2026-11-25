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

module MAlonzo.Code.Function.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Function.Base.id
d_id_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_id_24 ~v0 ~v1 v2 = du_id_24 v2
du_id_24 :: AgdaAny -> AgdaAny
du_id_24 v0 = coe v0
-- Function.Base.const
d_const_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_const_28 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_const_28 v4
du_const_28 :: AgdaAny -> AgdaAny
du_const_28 v0 = coe v0
-- Function.Base.constᵣ
d_const'7523'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_const'7523'_34 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_const'7523'_34 v5
du_const'7523'_34 :: AgdaAny -> AgdaAny
du_const'7523'_34 v0 = coe v0
-- Function.Base._∘_
d__'8728'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728'__54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728'__54 v6 v7 v8
du__'8728'__54 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728'__54 v0 v1 v2 = coe v0 v2 (coe v1 v2)
-- Function.Base._∘₂_
d__'8728''8322'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8728''8322'__92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du__'8728''8322'__92 v8 v9 v10 v11
du__'8728''8322'__92 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8728''8322'__92 v0 v1 v2 v3 = coe v0 v2 v3 (coe v1 v2 v3)
-- Function.Base.flip
d_flip_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_flip_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_flip_116 v6 v7 v8
du_flip_116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_flip_116 v0 v1 v2 = coe v0 v2 v1
-- Function.Base._$_
d__'36'__132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36'__132 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36'__132 v4 v5
du__'36'__132 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36'__132 v0 v1 = coe v0 v1
-- Function.Base._|>_
d__'124''62'__146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'124''62'__146 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'124''62'__146 v4 v5
du__'124''62'__146 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'124''62'__146 v0 v1 = coe v1 v0
-- Function.Base._ˢ_
d__'738'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'738'__166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'738'__166 v6 v7 v8
du__'738'__166 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'738'__166 v0 v1 v2 = coe v0 v2 (coe v1 v2)
-- Function.Base._$-
d__'36''45'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''45'_182 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36''45'_182 v4 v5
du__'36''45'_182 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''45'_182 v0 v1 = coe v0 v1
-- Function.Base.λ-
d_λ'45'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_λ'45'_194 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_λ'45'_194 v4 v5
du_λ'45'_194 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_λ'45'_194 v0 v1 = coe v0 v1
-- Function.Base.λ∙
d_λ'8729'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_λ'8729'_208 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_λ'8729'_208 v4
du_λ'8729'_208 :: (AgdaAny -> AgdaAny) -> AgdaAny
du_λ'8729'_208 v0 = coe v0 erased
-- Function.Base.case_returning_of_
d_case_returning_of__222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_returning_of__222 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_case_returning_of__222 v3 v5
du_case_returning_of__222 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_returning_of__222 v0 v1 = coe v1 v0
-- Function.Base._∘′_
d__'8728''8242'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728''8242'__230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728''8242'__230 v6 v7 v8
du__'8728''8242'__230 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728''8242'__230 v0 v1 v2 = coe v0 (coe v1 v2)
-- Function.Base._∘₂′_
d__'8728''8322''8242'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8728''8322''8242'__236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'8728''8322''8242'__236 v8 v9
du__'8728''8322''8242'__236 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8728''8322''8242'__236 v0 v1
  = coe du__'8728''8322'__92 (coe (\ v2 v3 -> v0)) (coe v1)
-- Function.Base.flip′
d_flip'8242'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_flip'8242'_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_flip'8242'_242 v6 v7 v8
du_flip'8242'_242 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_flip'8242'_242 v0 v1 v2 = coe v0 v2 v1
-- Function.Base._$′_
d__'36''8242'__244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''8242'__244 ~v0 ~v1 ~v2 ~v3 v4 = du__'36''8242'__244 v4
du__'36''8242'__244 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''8242'__244 v0 = coe v0
-- Function.Base._|>′_
d__'124''62''8242'__246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'124''62''8242'__246 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'124''62''8242'__246 v4 v5
du__'124''62''8242'__246 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'124''62''8242'__246 v0 v1 = coe v1 v0
-- Function.Base.case_of_
d_case_of__248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_of__248 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_case_of__248 v4 v5
du_case_of__248 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_of__248 v0 v1 = coe v1 v0
-- Function.Base._⟨_⟩_
d__'10216'_'10217'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'10216'_'10217'__254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'10216'_'10217'__254 v6 v7 v8
du__'10216'_'10217'__254 ::
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'10216'_'10217'__254 v0 v1 v2 = coe v1 v0 v2
-- Function.Base._∋_
d__'8715'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d__'8715'__264 ~v0 ~v1 v2 = du__'8715'__264 v2
du__'8715'__264 :: AgdaAny -> AgdaAny
du__'8715'__264 v0 = coe v0
-- Function.Base.typeOf
d_typeOf_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> ()
d_typeOf_272 = erased
-- Function.Base.it
d_it_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_it_278 ~v0 ~v1 v2 = du_it_278 v2
du_it_278 :: AgdaAny -> AgdaAny
du_it_278 v0 = coe v0
-- Function.Base._-⟪_⟫-_
d__'45''10218'_'10219''45'__282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'10219''45'__282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12 v13 v14
  = du__'45''10218'_'10219''45'__282 v10 v11 v12 v13 v14
du__'45''10218'_'10219''45'__282 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'10219''45'__282 v0 v1 v2 v3 v4
  = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
-- Function.Base._-⟪_∣
d__'45''10218'_'8739'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'8739'_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'45''10218'_'8739'_294 v8 v9
du__'45''10218'_'8739'_294 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'8739'_294 v0 v1
  = coe
      du__'45''10218'_'10219''45'__282 (coe v0) (coe v1)
      (coe (\ v2 v3 -> v3))
-- Function.Base.∣_⟫-_
d_'8739'_'10219''45'__300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8739'_'10219''45'__300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8739'_'10219''45'__300 v8 v9
du_'8739'_'10219''45'__300 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8739'_'10219''45'__300 v0 v1
  = coe
      du__'45''10218'_'10219''45'__282 (coe (\ v2 v3 -> v2)) (coe v0)
      (coe v1)
-- Function.Base._-⟨_∣
d__'45''10216'_'8739'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'8739'_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'45''10216'_'8739'_306 v8 v9
du__'45''10216'_'8739'_306 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'8739'_306 v0 v1
  = coe
      du__'45''10218'_'8739'_294
      (coe
         du__'8728''8322'__92 (coe (\ v2 v3 -> v0)) (coe (\ v2 v3 -> v2)))
      (coe v1)
-- Function.Base.∣_⟩-_
d_'8739'_'10217''45'__312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8739'_'10217''45'__312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8739'_'10217''45'__312 v8 v9
du_'8739'_'10217''45'__312 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8739'_'10217''45'__312 v0 v1
  = coe
      du_'8739'_'10219''45'__300 (coe v0)
      (coe
         du__'8728''8322'__92 (coe (\ v2 v3 -> v1)) (coe (\ v2 v3 -> v3)))
-- Function.Base._-⟪_⟩-_
d__'45''10218'_'10217''45'__318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'10217''45'__318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10218'_'10217''45'__318 v10 v11 v12
du__'45''10218'_'10217''45'__318 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'10217''45'__318 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__282 (coe v0) (coe v1)
      (coe du_'8739'_'10217''45'__312 (coe (\ v3 v4 -> v4)) (coe v2))
-- Function.Base._-⟨_⟫-_
d__'45''10216'_'10219''45'__326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'10219''45'__326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10216'_'10219''45'__326 v10 v11 v12
du__'45''10216'_'10219''45'__326 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'10219''45'__326 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__282
      (coe du__'45''10216'_'8739'_306 (coe v0) (coe (\ v3 v4 -> v3)))
      (coe v1) (coe v2)
-- Function.Base._-⟨_⟩-_
d__'45''10216'_'10217''45'__334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'10217''45'__334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10216'_'10217''45'__334 v10 v11 v12
du__'45''10216'_'10217''45'__334 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'10217''45'__334 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__282
      (coe du__'45''10216'_'8739'_306 (coe v0) (coe (\ v3 v4 -> v3)))
      (coe v1)
      (coe du_'8739'_'10217''45'__312 (coe (\ v3 v4 -> v4)) (coe v2))
-- Function.Base._on₂_
d__on'8322'__342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__on'8322'__342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__on'8322'__342 v8 v9
du__on'8322'__342 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__on'8322'__342 v0 v1
  = coe du__'45''10218'_'10219''45'__282 (coe v1) (coe v0) (coe v1)
-- Function.Base._on_
d__on__348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__on__348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du__on__348 v6 v7
du__on__348 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__on__348 v0 v1
  = coe du__'45''10216'_'10217''45'__334 (coe v1) (coe v0) (coe v1)
-- Function.Base._-[_]-_
d__'45''91'_'93''45'__354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''91'_'93''45'__354 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
                          v13 v14
  = coe du__'45''10218'_'10219''45'__282 v10 v11 v12 v13 v14
-- Function.Base.case_return_of_
d_case_return_of__356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_return_of__356 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_case_return_of__356 v3 v5
du_case_return_of__356 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_return_of__356 v0 v1 = coe v1 v0
