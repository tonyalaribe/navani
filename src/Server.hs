{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Server where

import Data.ByteString.Lazy as Lazy
import qualified Data.Map as M
import Data.Proxy
import Network.HTTP.Media ((//), (/:))
import Network.Wai.Handler.Warp (run)
import Servant.API
import Html (renderByteString)
import Servant.Server
import Servant.Server.StaticFiles (serveDirectoryWebApp)
import Templates.Projects (projectsPage)
import Data.Char (toLower)
-- import Control.Monad.Reader hiding (ask)
-- import Control.Monad.Trans.Reader
-- import Data.Pool

-- Postgresql Requires
-- import Opaleye
-- import Database.PostgreSQL.Simple
-- import Data.Profunctor.Product (p3)
-- import Control.Arrow hiding (app)
-- import Control.Monad.IO.Class

-- Config
serverport = 8081
dbHostname = "localhost"
dbPort = 5432
dbName = "mydb"
dbUsername = "b2b"
dbPassword = "b2b"

data HTML = HTML

newtype RawHtml = RawHtml {unRaw :: Lazy.ByteString}

instance Accept HTML where
  contentType _ = "text" // "html" /: ("charset", "utf-8")

instance MimeRender HTML RawHtml where
  mimeRender _ = unRaw

type MyAPI =
  Get '[HTML] RawHtml :<|> 
    Raw

homeHandler :: Handler RawHtml
homeHandler = return $ RawHtml $ renderByteString projectsPage

server :: Server MyAPI
server =
  homeHandler
    :<|> serveDirectoryWebApp "static"

runServer :: IO ()
runServer = run 8080 (serve (Proxy :: Proxy MyAPI) server)
