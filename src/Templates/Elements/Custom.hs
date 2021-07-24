{-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-unused-do-bind -fno-warn-name-shadowing -Wunticked-promoted-constructors #-}
{-# LANGUAGE NoMonomorphismRestriction, PolyKinds, TypeOperators,
   TypeApplications, GADTs, DataKinds, FlexibleInstances, RebindableSyntax, UndecidableInstances #-}
module Templates.Elements.Custom where 

import Html
import Prelude

fillA :: Attribute "fill" 'True 'False
fillA = CustomA

strokeLinecapA_ :: Attribute "stroke-linecap" 'True 'False
strokeLinecapA_ = CustomA

strokeWidthA_ :: Attribute "stroke-width" 'True 'False
strokeWidthA_ = CustomA

strokeA_ :: Attribute "stroke" 'True 'False
strokeA_ = CustomA

xmlnsA_:: Attribute "xmlns" 'True 'False
xmlnsA_ = CustomA

clipRuleA_:: Attribute "clip-rule" 'True 'False
clipRuleA_ = CustomA

strokeLinejoinA_ :: Attribute "stroke-linejoin" 'True 'False
strokeLinejoinA_ = CustomA

fillA_:: Attribute "fill" 'True 'False
fillA_ = CustomA

fillRuleA_:: Attribute "fill-rule" 'True 'False
fillRuleA_ = CustomA

dA_:: Attribute "d" 'True 'False
dA_ = CustomA

viewBoxA_ :: Attribute "view-box" 'True 'False
viewBoxA_ = CustomA

svg_ :: Element "svg" '[Flow, Phrasing] 'Flow '["async", "for"] 
svg_ = CustomElement

path_ :: Element "path" '[Flow, Phrasing] 'Flow '["async", "for"] 
path_ = CustomElement


