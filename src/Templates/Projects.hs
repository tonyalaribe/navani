module Templates.Projects where

import Html
import Data.Text

import GHC.Exts (Constraint)
import Data.Type.Bool

import Html.Convert

import Data.Proxy
import GHC.TypeLits

fillA :: Attribute "fill" 'True 'False
fillA = CustomA

pageWrapper content = let (>>) = (#) in do
  DOCTYPE
  Html :> do
    Head :> do
      Meta :@ (NameA:="viewport" # ContentA:="width=device-width, initial-scale=1")
      Link :@ (RelA:="preconnect" # HrefA:="https://fonts.gstatic.com")
      Link :@ (HrefA:="/static/css/tailwind.min.css" # RelA:="stylesheet")
      Title :> "API Toolkit"
    Body :> do
      Main :@ ClassA:="h-screen flex overflow-hidden bg-white" :> do
        content

desktopSidebar = let (>>) = (#) in do
  Div :@ ClassA:="hidden lg:flex lg:flex-shrink-0" :> do
    Div :@ ClassA:="flex flex-col w-64 border-r border-gray-200 pt-5 pb-4 bg-gray-100" :> do
      Div :@ ClassA:="flex items-center flex-shrink-0 px-6" :> do
        Img :@ (ClassA:="h-8 w-auto" # SrcA:="https://tailwindui.com/img/logos/workflow-logo-purple-500-mark-gray-700-text.svg" # AltA:="Workflow")
      Div :@ ClassA:="h-0 flex-1 flex flex-col overflow-y-auto" :> do
        Div :@ (ClassA:="px-3 mt-6 relative inline-block text-left") :>
            Button :@(TypeA:="button" # ClassA:="group w-full bg-gray-100 rounded-md px-3.5 py-2 text-sm text-left font-medium text-gray-700 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-100 focus:ring-purple-500" # IdA:="options-menu-button" # AriaExpandedA:="false" # AriaHaspopupA:="true") :> do
              Span :@ (ClassA:="flex w-full justify-between items-center") :> do
                Span :@ (ClassA:="flex min-w-0 items-center justify-between space-x-3") :> do
                  Img :@ (ClassA:="w-10 h-10 bg-gray-300 rounded-full flex-shrink-0" # SrcA:="https://images.unsplash.com/photo-1502685104226-ee32379fefbe?ixlib=rb-1.2.1&ixqx=MCK8LkAJKm&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80")
                  Span :@ (ClassA:="flex-1 flex flex-col min-w-0") :> do
                    Span :@ (ClassA:="text-gray-900 text-sm font-medium truncate") :> "Jessy Schwarz"
                    Span :@ (ClassA:="text-gray-500 text-sm truncate") :>"@jessyschwarz"
                Svg :@ (ClassA:="flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-gray-500" # XmlnsA:="http://www.w3.org/2000/svg"# ViewBox:="0 0 20 20" # FillA:="currentColor"# AriaHiddenA:="true") :> do
                  Path :@(FillRuleA:="evenodd"# DA:="M10 3a1 1 0 01.707.293l3 3a1 1 0 01-1.414 1.414L10 5.414 7.707 7.707a1 1 0 01-1.414-1.414l3-3A1 1 0 0110 3zm-3.707 9.293a1 1 0 011.414 0L10 14.586l2.293-2.293a1 1 0 011.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z"# ClipRuleA:="evenodd")
        Div :@ ClassA:="px-3 mt-5" :> do
          Label :@(ForA:="search" # ClassA:="sr-only") :>"Search"
          Div :@ (ClassA:="mt-1 relative rounded-md shadow-sm") :> do
            Div :@ (ClassA:="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none" # AriaHiddenA:="true") :>
              Svg :@ (ClassA:="mr-3 h-4 w-4 text-gray-400" # XmlnsA:="http://www.w3.org/2000/svg" # ViewBoxA:="0 0 20 20" # FillA:="currentColor"# AriaHiddenA:="true") :> do
                Path :@ (FillRuleA:="evenodd" DA:="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" # ClipRule:="evenodd") 
            Input :@(TypeA:="text"# NameA:="search"# IdA:="search" #ClassA:="focus:ring-indigo-500 focus:border-indigo-500 block w-full pl-9 sm:text-sm border-gray-300 rounded-md" # PlaceholderA:="Search") 
        Nav :@ (ClassA:="px-3 mt-6") :> do
          Div :@ (ClassA:="space-y-1") :> do
            A :@ (Href:="#" #ClassA:="bg-gray-200 text-gray-900 group flex items-center px-2 py-2 text-sm font-medium rounded-md"# AriaCurrent:="page") :> do
              Svg :@ (ClassA:="text-gray-500 mr-3 h-6 w-6"# XmlnsA:="http://www.w3.org/2000/svg"# FillA:="none"# ViewBoxA:="0 0 24 24" # StrokeA:="currentColor" AriaHiddenA:="true") :> do
                Path :@(StrokeLinecapA:="round"# StrokeLineJoinA:="round"# StrokeWidthA:="2"# DA:="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6") 
              "Home"

            A :@(HrefA:="#" # ClassA:="text-gray-700 hover:text-gray-900 hover:bg-gray-50 group flex items-center px-2 py-2 text-sm font-medium rounded-md") :> do
              Svg :@ (ClassA:="text-gray-400 group-hover:text-gray-500 mr-3 h-6 w-6"# XmlnsA:="http://www.w3.org/2000/svg"# FillA:="none"# ViewBoxA:="0 0 24 24" # StrokeA:="currentColor" # AriaHiddenA:="true") :> do
                Path :@ (StrokeLinecapA:="round"# StrokeLinejoinA:="round" StrokeWidthA:="2" DQ:="M4 6h16M4 10h16M4 14h16M4 18h16")
              "My tasks"


projects = let (>>) = (#) in do
  P :> "hello world"

helloX abc = let (>>) = (#) in do
  P :> abc 
  projects
