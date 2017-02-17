module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA = mapM toRNA'
    where 
      toRNA' nucleotide = case nucleotide of
        'C' -> Just 'G'
        'G' -> Just 'C'
        'A' -> Just 'U'
        'T' -> Just 'A'
        _ -> Nothing