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

module MAlonzo.Code.Tactic.Derive.TestTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base

-- Tactic.Derive.TestTypes.E0
d_E0_6 = ()
data T_E0_6
-- Tactic.Derive.TestTypes.E1
d_E1_8 = ()
data T_E1_8
  = C_c1E1_10 | C_c2E1_12 | C_c3E1_14 | C_c4E1_16 | C_c5E1_18 |
    C_c6E1_20 | C_c7E1_22
-- Tactic.Derive.TestTypes.E2
d_E2_28 a0 a1 = ()
data T_E2_28 = C_c1E2_34 AgdaAny | C_c2E2_36 T_E2_28
-- Tactic.Derive.TestTypes.E3
d_E3_42 a0 a1 = ()
data T_E3_42 = C_c1E3_48 [T_E3_42] (Maybe T_E3_42) | C_c2E3_50
-- Tactic.Derive.TestTypes.E4
d_E4_54 a0 a1 = ()
data T_E4_54 = C_c1E4_58 | C_c2E4_64
-- Tactic.Derive.TestTypes.R1
d_R1_66 = ()
data T_R1_66 = C_constructor_76 T_E1_8 T_E2_28
-- Tactic.Derive.TestTypes.R1.f1R1
d_f1R1_72 :: T_R1_66 -> T_E1_8
d_f1R1_72 v0
  = case coe v0 of
      C_constructor_76 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R1.f2R1
d_f2R1_74 :: T_R1_66 -> T_E2_28
d_f2R1_74 v0
  = case coe v0 of
      C_constructor_76 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2
d_R2_82 a0 a1 = ()
data T_R2_82
  = C_constructor_112 T_E1_8 T_E2_28 T_R1_66 T_R1_66 AgdaAny AgdaAny
-- Tactic.Derive.TestTypes.R2.f1R2
d_f1R2_100 :: T_R2_82 -> T_E1_8
d_f1R2_100 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2.f2R2
d_f2R2_102 :: T_R2_82 -> T_E2_28
d_f2R2_102 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2.f3R2
d_f3R2_104 :: T_R2_82 -> T_R1_66
d_f3R2_104 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2.f4R2
d_f4R2_106 :: T_R2_82 -> T_R1_66
d_f4R2_106 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2.f5R2
d_f5R2_108 :: T_R2_82 -> AgdaAny
d_f5R2_108 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R2.f6R2
d_f6R2_110 :: T_R2_82 -> AgdaAny
d_f6R2_110 v0
  = case coe v0 of
      C_constructor_112 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20
d_R20_114 = ()
data T_R20_114
  = C_constructor_196 Bool Bool Bool Bool Bool Bool Bool Bool Bool
                      Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool
-- Tactic.Derive.TestTypes.R20.r0
d_r0_156 :: T_R20_114 -> Bool
d_r0_156 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r1
d_r1_158 :: T_R20_114 -> Bool
d_r1_158 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r2
d_r2_160 :: T_R20_114 -> Bool
d_r2_160 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r3
d_r3_162 :: T_R20_114 -> Bool
d_r3_162 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r4
d_r4_164 :: T_R20_114 -> Bool
d_r4_164 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r5
d_r5_166 :: T_R20_114 -> Bool
d_r5_166 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r6
d_r6_168 :: T_R20_114 -> Bool
d_r6_168 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r7
d_r7_170 :: T_R20_114 -> Bool
d_r7_170 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r8
d_r8_172 :: T_R20_114 -> Bool
d_r8_172 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r9
d_r9_174 :: T_R20_114 -> Bool
d_r9_174 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r10
d_r10_176 :: T_R20_114 -> Bool
d_r10_176 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r11
d_r11_178 :: T_R20_114 -> Bool
d_r11_178 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r12
d_r12_180 :: T_R20_114 -> Bool
d_r12_180 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r13
d_r13_182 :: T_R20_114 -> Bool
d_r13_182 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r14
d_r14_184 :: T_R20_114 -> Bool
d_r14_184 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r15
d_r15_186 :: T_R20_114 -> Bool
d_r15_186 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r16
d_r16_188 :: T_R20_114 -> Bool
d_r16_188 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r17
d_r17_190 :: T_R20_114 -> Bool
d_r17_190 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r18
d_r18_192 :: T_R20_114 -> Bool
d_r18_192 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.R20.r19
d_r19_194 :: T_R20_114 -> Bool
d_r19_194 v0
  = case coe v0 of
      C_constructor_196 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.Derive.TestTypes.M₁
d_M'8321'_198 = ()
data T_M'8321'_198
  = C_m'8321'_202 | C_m'8322''8594''8321'_204 T_M'8322'_200
-- Tactic.Derive.TestTypes.M₂
d_M'8322'_200 = ()
data T_M'8322'_200
  = C_m'8322'_206 | C_m'8321''8594''8322'_208 T_M'8321'_198
-- Tactic.Derive.TestTypes.AllTestTypes
d_AllTestTypes_210 :: [AgdaAny]
d_AllTestTypes_210
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         (MAlonzo.RTE.QName
            (6 :: Integer) (4963930465463636455 :: Integer)
            "Tactic.Derive.TestTypes.E0"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            (MAlonzo.RTE.QName
               (8 :: Integer) (4963930465463636455 :: Integer)
               "Tactic.Derive.TestTypes.E1"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (28 :: Integer) (4963930465463636455 :: Integer)
                  "Tactic.Derive.TestTypes.E2"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  (MAlonzo.RTE.QName
                     (42 :: Integer) (4963930465463636455 :: Integer)
                     "Tactic.Derive.TestTypes.E3"
                     (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     (MAlonzo.RTE.QName
                        (66 :: Integer) (4963930465463636455 :: Integer)
                        "Tactic.Derive.TestTypes.R1"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (82 :: Integer) (4963930465463636455 :: Integer)
                           "Tactic.Derive.TestTypes.R2"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (198 :: Integer) (4963930465463636455 :: Integer)
                              "Tactic.Derive.TestTypes.M\8321"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (200 :: Integer) (4963930465463636455 :: Integer)
                                 "Tactic.Derive.TestTypes.M\8322"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
-- Tactic.Derive.TestTypes.stdlibTypes
d_stdlibTypes_212 :: [AgdaAny]
d_stdlibTypes_212
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
      (coe
         (MAlonzo.RTE.QName
            (6 :: Integer) (4305008439024043551 :: Integer)
            "Agda.Builtin.Bool.Bool"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            (MAlonzo.RTE.QName
               (10 :: Integer) (3788913586544620620 :: Integer)
               "Data.Container.Core.Container"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (10 :: Integer) (2085323462298651273 :: Integer)
                  "Data.Fin.Base.Fin"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  (MAlonzo.RTE.QName
                     (6 :: Integer) (10098474421514259553 :: Integer)
                     "Agda.Builtin.Int.Int"
                     (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     (MAlonzo.RTE.QName
                        (10 :: Integer) (15090436609435731260 :: Integer)
                        "Agda.Builtin.List.List"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (10 :: Integer) (15412666033012224255 :: Integer)
                           "Agda.Builtin.Maybe.Maybe"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (6 :: Integer) (13537827747504913145 :: Integer)
                              "Agda.Builtin.Nat.Nat"
                              (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (14 :: Integer) (15581396396021577314 :: Integer)
                                 "Agda.Builtin.Sigma.\931"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 (MAlonzo.RTE.QName
                                    (6 :: Integer) (8747350698661482649 :: Integer)
                                    "Data.Rational.Base.\8474"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (50 :: Integer) (8395657725285913129 :: Integer)
                                       "Data.Record.Record"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (28 :: Integer) (17505360159310801561 :: Integer)
                                          "Data.Refinement.Base.Refinement"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (6 :: Integer) (14572184943731776583 :: Integer)
                                             "Data.Sign.Base.Sign"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             (MAlonzo.RTE.QName
                                                (30 :: Integer) (9738182687374166275 :: Integer)
                                                "Data.Sum.Base._\8846_"
                                                (MAlonzo.RTE.Fixity
                                                   MAlonzo.RTE.RightAssoc
                                                   (MAlonzo.RTE.Related (1.0 :: Double)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (38 :: Integer) (92476466144455306 :: Integer)
                                                   "Data.These.Base.These"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   (MAlonzo.RTE.QName
                                                      (6 :: Integer)
                                                      (13559399870857524843 :: Integer)
                                                      "Agda.Builtin.Unit.\8868"
                                                      (MAlonzo.RTE.Fixity
                                                         MAlonzo.RTE.NonAssoc
                                                         MAlonzo.RTE.Unrelated)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (8 :: Integer)
                                                         (906832010010174352 :: Integer)
                                                         "Data.Universe.Universe"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                      (coe
                                                         (MAlonzo.RTE.QName
                                                            (28 :: Integer)
                                                            (3315087417907161601 :: Integer)
                                                            "Data.Vec.Base.Vec"
                                                            (MAlonzo.RTE.Fixity
                                                               MAlonzo.RTE.NonAssoc
                                                               MAlonzo.RTE.Unrelated)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            (MAlonzo.RTE.QName
                                                               (30 :: Integer)
                                                               (2561125238004038310 :: Integer)
                                                               "Data.W.W"
                                                               (MAlonzo.RTE.Fixity
                                                                  MAlonzo.RTE.NonAssoc
                                                                  MAlonzo.RTE.Unrelated)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))))))))))))
