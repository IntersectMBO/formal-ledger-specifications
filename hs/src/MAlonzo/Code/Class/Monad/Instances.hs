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

module MAlonzo.Code.Class.Monad.Instances where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Applicative.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base

-- Class.Monad.Instances.Monad-TC
d_Monad'45'TC_6 :: MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_Monad'45'TC_6
  = coe
      MAlonzo.Code.Class.Monad.Core.C_mkMonad_62
      (coe
         MAlonzo.Code.Class.Applicative.Instances.d_Applicative'45'TC_50)
      (coe MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_326)
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_336 v0 v2 erased))
-- Class.Monad.Instances.Monad-List
d_Monad'45'List_12 :: MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_Monad'45'List_12
  = coe
      MAlonzo.Code.Class.Monad.Core.C_mkMonad_62
      (coe
         MAlonzo.Code.Class.Applicative.Instances.d_Applicative'45'List_18)
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Data.List.Base.du_concatMap_246 (coe v5) (coe v4)))
-- Class.Monad.Instances.Monad-Maybe
d_Monad'45'Maybe_18 :: MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_Monad'45'Maybe_18
  = coe
      MAlonzo.Code.Class.Monad.Core.C_mkMonad_62
      (coe
         MAlonzo.Code.Class.Applicative.Instances.d_Applicative'45'Maybe_6)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16))
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__72))
-- Class.Monad.Instances.MonadLaws-Maybe
d_MonadLaws'45'Maybe_26 ::
  MAlonzo.Code.Class.Monad.Core.T_MonadLaws_166
d_MonadLaws'45'Maybe_26 = erased
-- Class.Monad.Instances._.Monad-Sumˡ..extendedlambda4
d_'46'extendedlambda4_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'extendedlambda4_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'46'extendedlambda4_46 v6 v7
du_'46'extendedlambda4_46 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'46'extendedlambda4_46 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2 -> coe v0
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2 -> coe v1 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Instances._.Monad-Sumˡ.⇒Applicative
d_'8658'Applicative_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_'8658'Applicative_56 ~v0 ~v1 = du_'8658'Applicative_56
du_'8658'Applicative_56 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du_'8658'Applicative_56
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Applicative_272
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_46 v4 v5)
-- Class.Monad.Instances._.Monad-Sumˡ.⇒Functor
d_'8658'Functor_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_'8658'Functor_58 ~v0 ~v1 = du_'8658'Functor_58
du_'8658'Functor_58 :: MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_'8658'Functor_58
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Functor_266
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_46 v4 v5)
-- Class.Monad.Instances._.Monad-Sumˡ.⇒Monad
d_'8658'Monad_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_'8658'Monad_60 ~v0 ~v1 = du_'8658'Monad_60
du_'8658'Monad_60 :: MAlonzo.Code.Class.Monad.Core.T_Monad_10
du_'8658'Monad_60
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Monad_282
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_46 v4 v5)
-- Class.Monad.Instances._.Monad-Sumʳ..extendedlambda4
d_'46'extendedlambda4_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'extendedlambda4_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_'46'extendedlambda4_66 v6 v7
du_'46'extendedlambda4_66 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'46'extendedlambda4_66 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2 -> coe v1 v2
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monad.Instances._.Monad-Sumʳ.⇒Applicative
d_'8658'Applicative_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_'8658'Applicative_76 ~v0 ~v1 = du_'8658'Applicative_76
du_'8658'Applicative_76 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du_'8658'Applicative_76
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Applicative_272
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_66 v4 v5)
-- Class.Monad.Instances._.Monad-Sumʳ.⇒Functor
d_'8658'Functor_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_'8658'Functor_78 ~v0 ~v1 = du_'8658'Functor_78
du_'8658'Functor_78 :: MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_'8658'Functor_78
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Functor_266
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_66 v4 v5)
-- Class.Monad.Instances._.Monad-Sumʳ.⇒Monad
d_'8658'Monad_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_'8658'Monad_80 ~v0 ~v1 = du_'8658'Monad_80
du_'8658'Monad_80 :: MAlonzo.Code.Class.Monad.Core.T_Monad_10
du_'8658'Monad_80
  = coe
      MAlonzo.Code.Class.Monad.Core.du_'8658'Monad_282
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38))
      (\ v0 v1 v2 v3 v4 v5 -> coe du_'46'extendedlambda4_66 v4 v5)
