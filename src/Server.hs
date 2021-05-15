{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Server where

import Data.ByteString.Lazy as Lazy
import qualified Data.Map as M
import Data.Proxy
import Lucid
import Network.HTTP.Media ((//), (/:))
import Network.Wai.Handler.Warp (run)
import Servant.API
import Servant.Server
import Servant.Server.StaticFiles (serveDirectoryWebApp)
import Templates.Projects (projectsPage)

data HTML = HTML

newtype RawHtml = RawHtml {unRaw :: Lazy.ByteString}

instance Accept HTML where
  contentType _ = "text" // "html" /: ("charset", "utf-8")

instance MimeRender HTML RawHtml where
  mimeRender _ = unRaw

type MyAPI =
  Get '[HTML] RawHtml
  :<|> Raw

homeHandler :: Handler RawHtml
homeHandler = return $ RawHtml $ renderBS projectsPage

server :: Server MyAPI
server =
  homeHandler
    :<|> serveDirectoryWebApp "static"

runServer :: IO ()
runServer = run 8080 (serve (Proxy :: Proxy MyAPI) server)
