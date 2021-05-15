module Templates.Projects where

import Lucid

-- pageWrapper :: Html() -> Html ()
-- pageWrapper content =
  
projectsPage :: Html()
projectsPage =
  doctypehtml_ $ do
    head_ $ do
      title_ "title"
    body_ body 

mobileNav :: Html()
mobileNav =
  section_ [] $ do
    div_ [class_ "fixed inset-0 flex z-40 lg:hidden", role_ "dialog", aria-modal_ "true"] $ do
      div_ [class_ "fixed inset-0 bg-gray-600 bg-opacity-75", aria-hidden_ "true"]
    div_ [class_ "relative flex-1 flex flex-col max-w-xs w-full pt-5 pb-4 bg-white"] $ do
      div_ [ class_ "absolute top-0 right-0 -mr-12 pt-2"] $ do
        button_ [class_ "ml-1 flex items-center justify-center h-10 w-10 rounded-full focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"] $ do
          span_ [class_ "sr-only"] "Close sidebar"
          svg_ [class_ "h-6 w-6 text-white", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", aria-hidden_ "true"] $ do
            path_ [stroke-linecap_ "round", stroke-linejoin_ "round", stroke-width_ "2", d_ "M6 18L18 6M6 6l12 12"]
      div_ [class_ "flex-shrink-0 flex items-center px-4"] $ do
        img_ [class_ "h-8 w-auto", src_ "https://tailwindui.com/img/logos/workflow-logo-purple-500-mark-gray-700-text.svg", alt_ "Workflow"]
      div_ [class_ "mt-5 flex-1 h-0 overflow-y-auto"] $ do
        nav_ [class_ "px-2"] $ do
          div_ [class_ "space-y-1"] $ do
            a_ [href_ "#" class_ "bg-gray-100 text-gray-900 group flex items-center px-2 py-2 text-base leading-5 font-medium rounded-md" aria-current_ "page"] $ do
              svg_ [class_ "text-gray-500 mr-3 h-6 w-6" xmlns_ "http://www.w3.org/2000/svg" fill_ "none" viewBox_ "0 0 24 24" stroke_ "currentColor" aria-hidden_ "true"] $ do
                path_ [stroke-linecap_ "round", stroke-linejoin_ "round", stroke-width_ "2", d_ "M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"] 
              "Home"

            a_ [href_ "#", class_ "text-gray-600 hover:text-gray-900 hover:bg-gray-50 group flex items-center px-2 py-2 text-base leading-5 font-medium rounded-md"] $ do
              svg_ [class_ "text-gray-400 group-hover:text-gray-500 mr-3 h-6 w-6" xmlns_ "http://www.w3.org/2000/svg" fill_ "none" viewBox_ "0 0 24 24" stroke_ "currentColor" aria-hidden_ "true"] $ do
                path_ [stroke-linecap_ "round" stroke-linejoin_ "round" stroke-width_ "2" d_ "M4 6h16M4 10h16M4 14h16M4 18h16" ]
              "My tasks"

            a_ [href_ "#" class_ "text-gray-600 hover:text-gray-900 hover:bg-gray-50 group flex items-center px-2 py-2 text-base leading-5 font-medium rounded-md"] $ do
              svg_ [class_ "text-gray-400 group-hover:text-gray-500 mr-3 h-6 w-6", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", aria-hidden_ "true"] $ do
                path_ [stroke-linecap_ "round", stroke-linejoin_ "round", stroke-width_ "2", d_ "M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" ]
              "Recent"
          div_ [class_ "mt-8" ] $ do
            h3_ [class_ "px-3 text-xs font-semibold text-gray-500 uppercase tracking-wider", id_ "teams-headline" ] $ do
              "Teams"
            div_ [class_ "mt-1 space-y-1" role_ "group" aria-labelledby_ "teams-headline"] $ do
              a_ [href_ "#" class_ "group flex items-center px-3 py-2 text-base leading-5 font-medium text-gray-600 rounded-md hover:text-gray-900 hover:bg-gray-50"] $ do
                span_ [class_ "w-2.5 h-2.5 mr-4 bg-indigo-500 rounded-full", aria-hidden_ "true"] $ do
                  span_ [class_ "truncate"] $ do
                    "Engineering"

    div_ [class_ "flex-shrink-0 w-14" aria-hidden_ "true"]
      -- Dummy element to force sidebar to shrink to fit close icon 




body :: Html ()
body =
  div_ [class_ "h-screen flex overflow-hidden bg-white"] $ do
    mobileNav
    -- Static sidebar for desktop -->
    div_ [class_ "hidden lg:flex lg:flex-shrink-0"] $ do
      div_ [class_ "flex flex-col w-64 border-r border-gray-200 pt-5 pb-4 bg-gray-100"] $ do
        div_ [class_ "flex items-center flex-shrink-0 px-6"] $ do
          img [class_ "h-8 w-auto", src_ "https://tailwindui.com/img/logos/workflow-logo-purple-500-mark-gray-700-text.svg", alt_ "Workflow"]
        -- Sidebar component, swap this element with another sidebar if you like -->
        div_ [class_ "h-0 flex-1 flex flex-col overflow-y-auto"] $ do
          -- User account dropdown -->
          div_ [class_ "px-3 mt-6 relative inline-block text-left"] $ do
            div_ $ do
              button_ [type_ "button" class_ "group w-full bg-gray-100 rounded-md px-3.5 py-2 text-sm text-left font-medium text-gray-700 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-100 focus:ring-purple-500" id_ "options-menu-button" aria-expanded_ "false" aria-haspopup_ "true"] $ do
                span_ [class_ "flex w-full justify-between items-center"] $ do
                  span_ [class_ "flex min-w-0 items-center justify-between space-x-3"] $ do
                    img [class_ "w-10 h-10 bg-gray-300 rounded-full flex-shrink-0", src_ "https://images.unsplash.com/photo-1502685104226-ee32379fefbe?ixlib=rb-1.2.1&ixqx=MCK8LkAJKm&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=3&w=256&h=256&q=80", alt_ ""] $ do
                    span_ [class_ "flex-1 flex flex-col min-w-0"] $ do
                      span_ [class_ "text-gray-900 text-sm font-medium truncate"] "Jessy Schwarz"
                      span_ [class_ "text-gray-500 text-sm truncate"] "@jessyschwarz"
                  svg_ [class_ "flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-gray-500", xmlns_ "http://www.w3.org/2000/svg", viewBox_ "0 0 20 20", fill_ "currentColor", aria-hidden_ "true"] $ do
                    path_ [fill-rule_ "evenodd", d_ "M10 3a1 1 0 01.707.293l3 3a1 1 0 01-1.414 1.414L10 5.414 7.707 7.707a1 1 0 01-1.414-1.414l3-3A1 1 0 0110 3zm-3.707 9.293a1 1 0 011.414 0L10 14.586l2.293-2.293a1 1 0 011.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z", clip-rule_ "evenodd" ]
            div_ [class_ "z-10 mx-3 origin-top absolute right-0 left-0 mt-1 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 divide-y divide-gray-200 focus:outline-none" ,role_ "menu", aria-orientation_ "vertical", aria-labelledby_ "options-menu-button", tabindex_ "-1"] $ do
              div_ [class_ "py-1", role_ "none"] $ do
                -- Active: "bg-gray-100 text-gray-900", Not Active: "text-gray-700" -->
                a_ [href_ "#",class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "options-menu-item-0"] "View profile"
                a_ [href_ "#",class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "options-menu-item-1"] "Settings"
              div_ [class_ "py-1", role_ "none"] $ do
                a_ [href_ "#", class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem", tabindex_ "-1",id_ "options-menu-item-3"] "Get desktop app"
                a_ [href_ "#", class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem", tabindex_ "-1",id_ "options-menu-item-4"] "Support"
              div_ [class_ "py-1",role_ "none"] $ do
                a_ [href_ "#", class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "options-menu-item-5"] "Logout"
          -- Sidebar Search -->
          div_ [class_ "px-3 mt-5"] $ do
            label_ [for_ "search" class_ "sr-only"] "Search"
            div_ [class_ "mt-1 relative rounded-md shadow-sm"] $ do
              div_ [class_ "absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none",aria-hidden_ "true"] $ do
                svg_ [class_ "mr-3 h-4 w-4 text-gray-400" xmlns_ "http://www.w3.org/2000/svg", viewBox_ "0 0 20 20", fill_ "currentColor", aria-hidden_ "true"] $ do
                  path_ [fill-rule_ "evenodd" d_ "M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule_ "evenodd" ]
              input_ [type_ "text", name_ "search", id_ "search", class_ "focus:ring-indigo-500 focus:border-indigo-500 block w-full pl-9 sm:text-sm border-gray-300 rounded-md", placeholder_ "Search"] 
          -- Navigation -->
          nav_ [class_ "px-3 mt-6"] $ do
            div_ [class_ "space-y-1"] $ do
              -- Current: "bg-gray-200 text-gray-900", Default: "text-gray-700 hover:text-gray-900 hover:bg-gray-50" -->
              a_ [href_ "#" class_ "bg-gray-200 text-gray-900 group flex items-center px-2 py-2 text-sm font-medium rounded-md" aria-current_ "page"] $ do
                svg_ [class_ "text-gray-500 mr-3 h-6 w-6" xmlns_ "http://www.w3.org/2000/svg" fill_ "none" viewBox_ "0 0 24 24" stroke_ "currentColor" aria-hidden_ "true"] $ do
                  path_ [stroke-linecap_ "round" stroke-linejoin_ "round" stroke-width_ "2" d_ "M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" ]
                "Home"

              a_ [href_ "#", class_ "text-gray-700 hover:text-gray-900 hover:bg-gray-50 group flex items-center px-2 py-2 text-sm font-medium rounded-md"] $ do
                svg_ [class_ "text-gray-400 group-hover:text-gray-500 mr-3 h-6 w-6",xmlns_ "http://www.w3.org/2000/svg",fill_ "none",viewBox_ "0 0 24 24",stroke_ "currentColor",aria-hidden_ "true"] $ do
                  path_ [stroke-linecap_ "round" stroke-linejoin_ "round" stroke-width_ "2" d_ "M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" ]
                "Recent"
            div_ [class_ "mt-8"] $ do
              -- Secondary navigation -->
              h3_ [class_ "px-3 text-xs font-semibold text-gray-500 uppercase tracking-wider", id_ "teams-headline"] $ do
                "Projects"
              div_ [class_ "mt-1 space-y-1", role_ "group", aria-labelledby_ "teams-headline"] $ do
                a_ [href_ "#", class_ "group flex items-center px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50"] $ do
                  span_ [class_ "w-2.5 h-2.5 mr-4 bg-indigo-500 rounded-full", aria-hidden_ "true"] 
                  span_ [class_ "truncate"] $ do
                    "Engineering"

                a_ [href_ "#", class_ "group flex items-center px-3 py-2 text-sm font-medium text-gray-700 rounded-md hover:text-gray-900 hover:bg-gray-50"] $ do
                  span_ [class_ "w-2.5 h-2.5 mr-4 bg-yellow-500 rounded-full", aria-hidden_ "true"]
                  span_ [class_ "truncate"] $ do
                    "Customer Success"
    mainColumn


mainColumn :: Html()
mainColumn = 
  div_ [class_ "flex flex-col w-0 flex-1 overflow-hidden"] $ do
    -- Search header -->
    div_ [class_ "relative z-10 flex-shrink-0 flex h-16 bg-white border-b border-gray-200 lg:hidden"] $ do
      -- Sidebar toggle, controls the 'sidebarOpen' sidebar state. -->
      button_ [class_ "px-4 border-r border-gray-200 text-gray-500 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-purple-500 lg:hidden"] $ do
        span_ [class_ "sr-only"]  "Open sidebar"
        svg_ [class_ "h-6 w-6",xmlns_ "http://www.w3.org/2000/svg",fill_ "none",viewBox_ "0 0 24 24",stroke_ "currentColor",aria-hidden_ "true"] $ do
          path_ [stroke-linecap_ "round" stroke-linejoin_ "round",stroke-width_ "2" d_ "M4 6h16M4 12h8m-8 6h16" ]
      div_ [class_ "flex-1 flex justify-between px-4 sm:px-6 lg:px-8"] $ do
        div_ [class_ "flex-1 flex"] $ do
          form_ [class_ "w-full flex md:ml-0", action_ "#", method_ "GET"] $ do
            label_ [for_ "search_field" class_ "sr-only"] "Search"
            div_ [class_ "relative w-full text-gray-400 focus-within:text-gray-600"] $ do
              div_ [class_ "absolute inset-y-0 left-0 flex items-center pointer-events-none"] $ do
                svg_ [class_ "h-5 w-5",xmlns_ "http://www.w3.org/2000/svg",viewBox_ "0 0 20 20",fill_ "currentColor",aria-hidden_ "true"] $ do
                  path_ [fill-rule_ "evenodd",d_ "M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z",clip-rule_ "evenodd" ]
              input_ [id_ "search_field", name_ "search_field", class_ "block w-full h-full pl-8 pr-3 py-2 border-transparent text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-0 focus:border-transparent focus:placeholder-gray-400 sm:text-sm", placeholder_ "Search", type_ "search"] 
        div_ [class_ "flex items-center"] $ do
          -- Profile dropdown -->
          div_ [class_ "ml-3 relative"] $ do
            div_ $ do
              button_ [type_ "button", class_ "max-w-xs bg-white flex items-center text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500", id_ "user-menu-button", aria-expanded_ "false", aria-haspopup_ "true"] $ do
                span_ [class_ "sr-only"] "Open user menu"
                img_ [class_ "h-8 w-8 rounded-full", src_ "https://images.unsplash.com/photo-1502685104226-ee32379fefbe?ixlib=rb-1.2.1&ixqx=MCK8LkAJKm&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",alt_ ""]

            ----
            --  Dropdown menu, show/hide based on menu state.

            --  Entering: "transition ease-out duration-100"
            --    From: "transform opacity-0 scale-95"
            --    To: "transform opacity-100 scale-100"
            --  Leaving: "transition ease-in duration-75"
            --    From: "transform opacity-100 scale-100"
            --    To: "transform opacity-0 scale-95"
            ---
            div_ [class_ "origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 divide-y divide-gray-200 focus:outline-none" role_ "menu" aria-orientation_ "vertical" aria-labelledby_ "user-menu-button" tabindex_ "-1"] $ do
              div_ [class_ "py-1" role_ "none"] $ do
                -- Active: "bg-gray-100 text-gray-900", Not Active: "text-gray-700" -->
                a_ [href_ "#" class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "user-menu-item-0"] "View profile"
                a_ [href_ "#" class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "user-menu-item-1"] "Settings"
              div_ [class_ "py-1" role_ "none"] $ do
                a_ [href_ "#" class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "user-menu-item-4"] "Support"
              div_ [class_ "py-1" role_ "none"] $ do
                a_ [href_ "#" class_ "text-gray-700 block px-4 py-2 text-sm",role_ "menuitem",tabindex_ "-1",id_ "user-menu-item-5"] "Logout"

    pageSection

pageSection :: Html()
pageSection =
  main_ [class_ "flex-1 relative z-0 overflow-y-auto focus:outline-none"] $ do
    -- Page title & actions -->
    div_ [class_ "border-b border-gray-200 px-4 py-4 sm:flex sm:items-center sm:justify-between sm:px-6 lg:px-8"] $ do
      div_ [class_ "flex-1 min-w-0"] $ do
        h1_ [class_ "text-lg font-medium leading-6 text-gray-900 sm:truncate"] $ do
          "Home"
      div_ [class_ "mt-4 flex sm:mt-0 sm:ml-4"] $ do
        button_ [type_ "button" class_ "order-1 ml-3 inline-flex items-center px-4 py-2 border border-gray-300 shadow-sm text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500 sm:order-0 sm:ml-0"] $ do
          "Share"
        button_ [type_ "button" class_ "order-0 inline-flex items-center px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-purple-600 hover:bg-purple-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-purple-500 sm:order-1 sm:ml-3"] $ do
          "Create"
