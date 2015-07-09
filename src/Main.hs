import System.Directory
import System.Environment


checkArgs :: [String] -> IO Bool
checkArgs args
        | length args /= 2 = return False
        | otherwise        = do dE <- doesDirectoryExist ( head args )
                                fE <- doesFileExist ( last args )
                                return $ dE && fE

main :: IO ()
main = do args <- getArgs
          gArgs <- checkArgs args
          print gArgs
