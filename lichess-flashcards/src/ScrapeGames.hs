module ScrapeGames
    (
    ) where

import Data.Aeson (Value, object, (.=), encode)
import Data.Text (Text)
import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple   (httpJSONEither
                                       ,getResponseStatusCode
                                       ,getResponseHeader
                                       ,getResponseBody)


-- https://lichess.org/api#operation/apiGamesUser
-- PATH: /api/games/user/{username}
-- AUTHORIZATIONS: None
-- PATH PARAMETERS:
--   username :: string
--   since :: integer >= 1356998400070
--   analysed :: boolean
--   evals :: boolean
--     Example: 12. Bxf6 { [%eval 0.23] } a3 { [%eval -1.09] }
--   [is this available? might only be for a single game]
--   literate ::  boolean
--     Example: 5... g4? { (-0.98 → 0.60) Mistake. Best move was h6. } (5... h6 6. d4 Ne7 7. g3 d5 8. exd5 fxg3 9. hxg3 c6 10. dxc6)

userGamesApiPath :: String -> String
userGamesApiPath username = "http://www.lichess.com/api/games/user/" ++ username

printGames :: String -> IO ()
printGames username = do
  response <- httpLBS $ userGamesApiPath username
  L8.putStrLn $ getResponseBody response
  
