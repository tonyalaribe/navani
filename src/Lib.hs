{-# LANGUAGE OverloadedStrings,QuasiQuotes,DeriveGeneric #-}
module Lib
    ( someFunc
    ) where

import Data.Map (Map, (!))
import qualified Data.Map as Map
import Data.Text.Lazy as T
import Data.Text.Lazy.Encoding as TE
import Data.Aeson as AE
import Text.RawString.QQ
import GHC.Generics
import Data.ByteString.Lazy.Internal


data Request 
    = Request {url :: T.Text
    ,path :: T.Text
    ,pathArr :: [T.Text]
    ,host :: T.Text
    ,queryStrings :: T.Text 
    ,body :: (Map T.Text AE.Value)
    ,headers :: (Map T.Text AE.Value)
    } deriving (Show, Generic)
instance FromJSON Request
instance ToJSON Request

data ApiType = Path | QueryParam | JsonKey

data Api 
    = Api {key :: T.Text
    ,apitype :: ApiType
    ,value :: Either AE.Value Api 
    }

-- request2api :: Request -> Api -> Api
-- request2api req api =  

someFunc :: IO ()
someFunc = print $ request exjson

request :: ByteString -> Either String Request
request json = AE.eitherDecode $ json


-- buildAPI :: Api -> Request -> Api
-- buildAPI a r = 
--     case (pathArr r) of
--         [x]-> 
--         [x:xs]-> buildAPI 


exjson :: ByteString 
exjson = [r|{
        "url":"https://example.com/todao/todoid1",
        "path":"/todo/todoid1",
        "pathArr": ["todo","todoid1"],
        "host":"https://example.com",
        "queryStrings":"q=sss",
        "body":{
            "count": 0,
            "data":{
                "name":"namex",
                "description":"descxxx",
                "age":44
            }
        },
        "headers":{
            "X-Global-Entity-ID":"FP_BG",
            "Authorization":"Bearer xxx"
        }
    }|]

{--
- Hard things i had to solve
    - Parsing json with either to get error message
    - Adding dependencies
    - GHCI workflow
    - Deriving json and generics. Haskell needs examples
    - Pretty printing
    - Quasistrings
    - Lazy Text and Text and ByteStrings
    - Look at library and have no idea how to use
--}
