ask prompt = do
    putStrLn prompt
    line <- getLine
    if line == "quit"
        then putStrLn "quitting..."
        else if line == "" 
            then ask (prompt ++ "!") -- Recurse with "!" added to prompt
            else do
                putStrLn ("you said: " ++ reverse line)
                ask prompt           -- Recurse with normal prompt
main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt