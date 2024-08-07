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

module MAlonzo.Code.Agda.Builtin.Reflection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Float
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive

-- Agda.Builtin.Reflection.Name
d_Name_6
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Reflection.Name"
-- Agda.Builtin.Reflection.primQNameEquality
d_primQNameEquality_8
  = (\ x y -> ((==) :: MAlonzo.RTE.QName -> MAlonzo.RTE.QName -> Bool) ( x) ( y))
-- Agda.Builtin.Reflection.primQNameLess
d_primQNameLess_10
  = (\ x y -> ((<) :: MAlonzo.RTE.QName -> MAlonzo.RTE.QName -> Bool) ( x) ( y))
-- Agda.Builtin.Reflection.primShowQName
d_primShowQName_12 = Data.Text.pack . MAlonzo.RTE.qnameString
-- Agda.Builtin.Reflection.Associativity
d_Associativity_14 = ()
type T_Associativity_14 = MAlonzo.RTE.Assoc
pattern C_left'45'assoc_16 = MAlonzo.RTE.LeftAssoc
pattern C_right'45'assoc_18 = MAlonzo.RTE.RightAssoc
pattern C_non'45'assoc_20 = MAlonzo.RTE.NonAssoc
check_left'45'assoc_16 :: T_Associativity_14
check_left'45'assoc_16 = MAlonzo.RTE.LeftAssoc
check_right'45'assoc_18 :: T_Associativity_14
check_right'45'assoc_18 = MAlonzo.RTE.RightAssoc
check_non'45'assoc_20 :: T_Associativity_14
check_non'45'assoc_20 = MAlonzo.RTE.NonAssoc
cover_Associativity_14 :: MAlonzo.RTE.Assoc -> ()
cover_Associativity_14 x
  = case x of
      MAlonzo.RTE.LeftAssoc -> ()
      MAlonzo.RTE.RightAssoc -> ()
      MAlonzo.RTE.NonAssoc -> ()
-- Agda.Builtin.Reflection.Precedence
d_Precedence_22 = ()
type T_Precedence_22 = MAlonzo.RTE.Precedence
pattern C_related_24 a0 = MAlonzo.RTE.Related a0
pattern C_unrelated_26 = MAlonzo.RTE.Unrelated
check_related_24 ::
  MAlonzo.Code.Agda.Builtin.Float.T_Float_6 -> T_Precedence_22
check_related_24 = MAlonzo.RTE.Related
check_unrelated_26 :: T_Precedence_22
check_unrelated_26 = MAlonzo.RTE.Unrelated
cover_Precedence_22 :: MAlonzo.RTE.Precedence -> ()
cover_Precedence_22 x
  = case x of
      MAlonzo.RTE.Related _ -> ()
      MAlonzo.RTE.Unrelated -> ()
-- Agda.Builtin.Reflection.Fixity
d_Fixity_28 = ()
type T_Fixity_28 = MAlonzo.RTE.Fixity
pattern C_fixity_30 a0 a1 = MAlonzo.RTE.Fixity a0 a1
check_fixity_30 ::
  T_Associativity_14 -> T_Precedence_22 -> T_Fixity_28
check_fixity_30 = MAlonzo.RTE.Fixity
cover_Fixity_28 :: MAlonzo.RTE.Fixity -> ()
cover_Fixity_28 x
  = case x of
      MAlonzo.RTE.Fixity _ _ -> ()
-- Agda.Builtin.Reflection.primQNameFixity
d_primQNameFixity_32 = MAlonzo.RTE.qnameFixity
-- Agda.Builtin.Reflection.primQNameToWord64s
d_primQNameToWord64s_36
  = \ qn -> (MAlonzo.RTE.nameId qn, MAlonzo.RTE.moduleId qn)
-- Agda.Builtin.Reflection.Meta
d_Meta_38
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Reflection.Meta"
-- Agda.Builtin.Reflection.primMetaEquality
d_primMetaEquality_40
  = (\ x y -> ((==) :: (Integer, Integer) -> (Integer, Integer) -> Bool) ( x) ( y))
-- Agda.Builtin.Reflection.primMetaLess
d_primMetaLess_42
  = (\ x y -> ((<) :: (Integer, Integer) -> (Integer, Integer) -> Bool) ( x) ( y))
-- Agda.Builtin.Reflection.primShowMeta
d_primShowMeta_44
  = \ (m, h) -> Data.Text.pack ("_" ++ show (m :: Integer) ++ "@" ++ show (h :: Integer))
-- Agda.Builtin.Reflection.primMetaToNat
d_primMetaToNat_46
  = \ (m, h) -> (h :: Integer) * 2^64 + (m :: Integer)
-- Agda.Builtin.Reflection.Visibility
d_Visibility_48 = ()
data T_Visibility_48
  = C_visible_50 | C_hidden_52 | C_instance'8242'_54
-- Agda.Builtin.Reflection.Relevance
d_Relevance_56 = ()
data T_Relevance_56 = C_relevant_58 | C_irrelevant_60
-- Agda.Builtin.Reflection.Quantity
d_Quantity_62 = ()
data T_Quantity_62 = C_quantity'45'0_64 | C_quantity'45'ω_66
-- Agda.Builtin.Reflection.Modality
d_Modality_68 = ()
data T_Modality_68 = C_modality_74 T_Relevance_56 T_Quantity_62
-- Agda.Builtin.Reflection.ArgInfo
d_ArgInfo_76 = ()
data T_ArgInfo_76 = C_arg'45'info_82 T_Visibility_48 T_Modality_68
-- Agda.Builtin.Reflection.Arg
d_Arg_88 a0 a1 = ()
data T_Arg_88 = C_arg_98 T_ArgInfo_76 AgdaAny
-- Agda.Builtin.Reflection.Blocker
d_Blocker_100 = ()
data T_Blocker_100
  = C_blockerAny_102 [T_Blocker_100] |
    C_blockerAll_104 [T_Blocker_100] | C_blockerMeta_106 AgdaAny
-- Agda.Builtin.Reflection.Abs
d_Abs_112 a0 a1 = ()
data T_Abs_112
  = C_abs_122 MAlonzo.Code.Agda.Builtin.String.T_String_6 AgdaAny
-- Agda.Builtin.Reflection.Literal
d_Literal_124 = ()
data T_Literal_124
  = C_nat_128 Integer | C_word64_132 MAlonzo.RTE.Word64 |
    C_float_136 MAlonzo.Code.Agda.Builtin.Float.T_Float_6 |
    C_char_140 MAlonzo.Code.Agda.Builtin.Char.T_Char_6 |
    C_string_144 MAlonzo.Code.Agda.Builtin.String.T_String_6 |
    C_name_148 AgdaAny | C_meta_152 AgdaAny
-- Agda.Builtin.Reflection.Term
d_Term_154 = ()
data T_Term_154
  = C_var_172 Integer [T_Arg_88] | C_con_178 AgdaAny [T_Arg_88] |
    C_def_184 AgdaAny [T_Arg_88] |
    C_lam_190 T_Visibility_48 T_Abs_112 |
    C_pat'45'lam_196 [T_Clause_160] [T_Arg_88] |
    C_pi_202 T_Arg_88 T_Abs_112 | C_agda'45'sort_206 T_Sort_156 |
    C_lit_210 T_Literal_124 | C_meta_214 AgdaAny [T_Arg_88] |
    C_unknown_216
-- Agda.Builtin.Reflection.Sort
d_Sort_156 = ()
data T_Sort_156
  = C_set_220 T_Term_154 | C_lit_224 Integer |
    C_prop_228 T_Term_154 | C_propLit_232 Integer | C_inf_236 Integer |
    C_unknown_238
-- Agda.Builtin.Reflection.Pattern
d_Pattern_158 = ()
data T_Pattern_158
  = C_con_244 AgdaAny [T_Arg_88] | C_dot_248 T_Term_154 |
    C_var_252 Integer | C_lit_256 T_Literal_124 | C_proj_260 AgdaAny |
    C_absurd_264 Integer
-- Agda.Builtin.Reflection.Clause
d_Clause_160 = ()
data T_Clause_160
  = C_clause_272 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [T_Arg_88]
                 T_Term_154 |
    C_absurd'45'clause_278 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                           [T_Arg_88]
-- Agda.Builtin.Reflection.Type
d_Type_162 :: ()
d_Type_162 = erased
-- Agda.Builtin.Reflection.Telescope
d_Telescope_164 :: ()
d_Telescope_164 = erased
-- Agda.Builtin.Reflection.Definition
d_Definition_280 = ()
data T_Definition_280
  = C_function_284 [T_Clause_160] |
    C_data'45'type_290 Integer [AgdaAny] |
    C_record'45'type_296 AgdaAny [T_Arg_88] |
    C_data'45'cons_300 AgdaAny | C_axiom_302 | C_prim'45'fun_304
-- Agda.Builtin.Reflection.ErrorPart
d_ErrorPart_306 = ()
data T_ErrorPart_306
  = C_strErr_308 MAlonzo.Code.Agda.Builtin.String.T_String_6 |
    C_termErr_310 T_Term_154 | C_pattErr_312 T_Pattern_158 |
    C_nameErr_314 AgdaAny
-- Agda.Builtin.Reflection.TC
d_TC_318
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Reflection.TC"
-- Agda.Builtin.Reflection.returnTC
d_returnTC_324 = erased
-- Agda.Builtin.Reflection.bindTC
d_bindTC_334 = erased
-- Agda.Builtin.Reflection.unify
d_unify_336 = erased
-- Agda.Builtin.Reflection.typeError
d_typeError_342 = erased
-- Agda.Builtin.Reflection.inferType
d_inferType_344 = erased
-- Agda.Builtin.Reflection.checkType
d_checkType_346 = erased
-- Agda.Builtin.Reflection.normalise
d_normalise_348 = erased
-- Agda.Builtin.Reflection.reduce
d_reduce_350 = erased
-- Agda.Builtin.Reflection.catchTC
d_catchTC_356 = erased
-- Agda.Builtin.Reflection.quoteTC
d_quoteTC_362 = erased
-- Agda.Builtin.Reflection.unquoteTC
d_unquoteTC_368 = erased
-- Agda.Builtin.Reflection.quoteωTC
d_quoteωTC_372 = erased
-- Agda.Builtin.Reflection.getContext
d_getContext_374 = erased
-- Agda.Builtin.Reflection.extendContext
d_extendContext_380 = erased
-- Agda.Builtin.Reflection.inContext
d_inContext_386 = erased
-- Agda.Builtin.Reflection.freshName
d_freshName_388 = erased
-- Agda.Builtin.Reflection.declareDef
d_declareDef_390 = erased
-- Agda.Builtin.Reflection.declarePostulate
d_declarePostulate_392 = erased
-- Agda.Builtin.Reflection.declareData
d_declareData_394 = erased
-- Agda.Builtin.Reflection.defineData
d_defineData_398 = erased
-- Agda.Builtin.Reflection.defineFun
d_defineFun_400 = erased
-- Agda.Builtin.Reflection.getType
d_getType_402 = erased
-- Agda.Builtin.Reflection.getDefinition
d_getDefinition_404 = erased
-- Agda.Builtin.Reflection.blockTC
d_blockTC_410 = erased
-- Agda.Builtin.Reflection.commitTC
d_commitTC_412 = erased
-- Agda.Builtin.Reflection.isMacro
d_isMacro_414 = erased
-- Agda.Builtin.Reflection.pragmaForeign
d_pragmaForeign_416 = erased
-- Agda.Builtin.Reflection.pragmaCompile
d_pragmaCompile_418 = erased
-- Agda.Builtin.Reflection.withNormalisation
d_withNormalisation_424 = erased
-- Agda.Builtin.Reflection.askNormalisation
d_askNormalisation_426 = erased
-- Agda.Builtin.Reflection.withReconstructed
d_withReconstructed_432 = erased
-- Agda.Builtin.Reflection.askReconstructed
d_askReconstructed_434 = erased
-- Agda.Builtin.Reflection.withExpandLast
d_withExpandLast_440 = erased
-- Agda.Builtin.Reflection.askExpandLast
d_askExpandLast_442 = erased
-- Agda.Builtin.Reflection.withReduceDefs
d_withReduceDefs_450 = erased
-- Agda.Builtin.Reflection.askReduceDefs
d_askReduceDefs_454 = erased
-- Agda.Builtin.Reflection.formatErrorParts
d_formatErrorParts_456 = erased
-- Agda.Builtin.Reflection.debugPrint
d_debugPrint_458 = erased
-- Agda.Builtin.Reflection.noConstraints
d_noConstraints_464 = erased
-- Agda.Builtin.Reflection.runSpeculative
d_runSpeculative_472 = erased
-- Agda.Builtin.Reflection.getInstances
d_getInstances_474 = erased
-- Agda.Builtin.Reflection.filter
d_filter_476 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_filter_476 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           coe
             (if coe v4
                then coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                       (coe d_filter_476 (coe v0) (coe v3))
                else coe d_filter_476 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Agda.Builtin.Reflection._∈_
d__'8712'__502 :: AgdaAny -> [AgdaAny] -> Bool
d__'8712'__502 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      (:) v2 v3
        -> let v4 = coe d_primQNameEquality_8 v0 v2 in
           coe
             (if coe v4 then coe v4 else coe d__'8712'__502 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Agda.Builtin.Reflection._∉_
d__'8713'__528 :: AgdaAny -> [AgdaAny] -> Bool
d__'8713'__528 v0 v1
  = let v2 = d__'8712'__502 (coe v0) (coe v1) in
    coe
      (if coe v2
         then coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
         else coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Agda.Builtin.Reflection._++_
d__'43''43'__546 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'43''43'__546 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe d__'43''43'__546 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Agda.Builtin.Reflection.combineReduceDefs
d_combineReduceDefs_562 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_combineReduceDefs_562 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> if coe v2
             then case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> if coe v4
                           then coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                  (coe
                                     d_filter_476 (coe (\ v6 -> d__'8712'__502 (coe v6) (coe v3)))
                                     (coe v5))
                           else coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                  (coe
                                     d_filter_476 (coe (\ v6 -> d__'8713'__528 (coe v6) (coe v5)))
                                     (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                       -> if coe v4
                            then coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                   (coe
                                      d_filter_476 (coe (\ v6 -> d__'8713'__528 (coe v6) (coe v3)))
                                      (coe v5))
                            else coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                   (coe d__'43''43'__546 (coe v3) (coe v5))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Agda.Builtin.Reflection.onlyReduceDefs
d_onlyReduceDefs_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> AgdaAny -> AgdaAny
d_onlyReduceDefs_590 v0 ~v1 v2 v3 = du_onlyReduceDefs_590 v0 v2 v3
du_onlyReduceDefs_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
du_onlyReduceDefs_590 v0 v1 v2
  = coe
      d_bindTC_334 () v0 erased erased d_askReduceDefs_454
      (\ v3 ->
         coe
           d_withReduceDefs_450 v0 erased
           (d_combineReduceDefs_562
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) (coe v1))
              (coe v3))
           v2)
-- Agda.Builtin.Reflection.dontReduceDefs
d_dontReduceDefs_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> AgdaAny -> AgdaAny
d_dontReduceDefs_596 v0 ~v1 v2 v3 = du_dontReduceDefs_596 v0 v2 v3
du_dontReduceDefs_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  [AgdaAny] -> AgdaAny -> AgdaAny
du_dontReduceDefs_596 v0 v1 v2
  = coe
      d_bindTC_334 () v0 erased erased d_askReduceDefs_454
      (\ v3 ->
         coe
           d_withReduceDefs_450 v0 erased
           (d_combineReduceDefs_562
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8) (coe v1))
              (coe v3))
           v2)
-- Agda.Builtin.Reflection.blockOnMeta
d_blockOnMeta_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_blockOnMeta_614 v0 ~v1 v2 = du_blockOnMeta_614 v0 v2
du_blockOnMeta_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> AgdaAny -> AgdaAny
du_blockOnMeta_614 v0 v1
  = coe d_blockTC_410 v0 erased (coe C_blockerMeta_106 (coe v1))
