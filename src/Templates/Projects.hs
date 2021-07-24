{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE RebindableSyntax #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures -fno-warn-unused-do-bind -fno-warn-name-shadowing #-}

module Templates.Projects
  ( projectsPage,
  )
where

import Html
import Templates.Elements.Custom
import Templates.Elements.PageWrapper

projectsPage = pageWrapper "Projects" projectsTitleButtons content

projectsTitleButtons =
  let (>>) = (#)
   in do
        Button :@ (TypeA := "button" # ClassA := "order-1 ml-3 inline-flex items-center px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500 sm:order-0 sm:ml-0") :> "Share"
        Button :@ (TypeA := "button" # ClassA := "order-0 inline-flex items-center px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500 sm:order-1 sm:ml-3") :> "Create"

content =
  let (>>) = (#)
   in do
        Section :> do
          H3 :@ ClassA := "text-lg leading-6 font-medium text-gray-900 py-3" :> "Projects"
          Div :@ (ClassA := "bg-white shadow overflow-hidden sm:rounded-md") :> do
            Ul :@ (ClassA := "divide-y divide-gray-200") :> do
              Li :> do
                A :@ (HrefA := "#" # ClassA := "block hover:bg-gray-50") :> do
                  Div :@ (ClassA := "flex items-center px-4 py-4 sm:px-6") :> do
                    Div :@ (ClassA := "min-w-0 flex-1 flex items-center") :> do
                      Div :@ (ClassA := "flex-shrink-0") :> do
                        Img :@ (ClassA := "h-12 w-12 rounded-full" # SrcA := "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixqx=MCK8LkAJKm&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" # AltA := "")
                      Div :@ (ClassA := "min-w-0 flex-1 px-4 md:grid md:grid-cols-2 md:gap-4") :> do
                        Div :> do
                          P :@ (ClassA := "text-sm font-medium text-indigo-600 truncate") :> "Ricardo Cooper"
                          P :@ (ClassA := "mt-2 flex items-center text-sm text-gray-500") :> do
                            svg_ :@ (ClassA := "flex-shrink-0 mr-1.5 h-5 w-5 text-gray-400" # xmlnsA_ := "http://www.w3.org/2000/svg" # viewBoxA_ := "0 0 20 20" # fillA_ := "currentColor" # AriaHiddenA := "true") :> do
                              path_ :@ (dA_ := "M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z")
                              path_ :@ (dA_ := "M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z")
                            Span :@ (ClassA := "truncate") :> "ricardo.cooper@example.com"
                        Div :@ (ClassA := "hidden md:block") :> do
                          Div :> do
                            P :@ (ClassA := "text-sm text-gray-900") :> do
                              "Applied on"
                              Time :@ (DatetimeA := "2020-01-07") :> "January 7, 2020"
                            P :@ (ClassA := "mt-2 flex items-center text-sm text-gray-500") :> do
                              svg_ :@ (ClassA := "flex-shrink-0 mr-1.5 h-5 w-5 text-green-400" #xmlnsA_ := "http://www.w3.org/2000/svg" # viewBoxA_ := "0 0 20 20" # fillA_ := "currentColor" # AriaHiddenA := "true") :> do
                                path_ :@ (fillRuleA_ := "evenodd" # dA_ := "M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" # clipRuleA_ := "evenodd")
                              "Completed phone screening"
                    Div :> do
                      svg_ :@ (ClassA := "h-5 w-5 text-gray-400" #xmlnsA_ := "http://www.w3.org/2000/svg" # viewBoxA_ := "0 0 20 20" #fillA_ := "currentColor" # AriaHiddenA := "true") :> do
                        path_ :@ (fillRuleA_ := "evenodd" #dA_ := "M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" # clipRuleA_ := "evenodd")
