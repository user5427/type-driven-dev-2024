module MyStuff

import Data.Vect

%default total

allLength : Vect l String -> Vect l Nat
allLength [] = []
allLength (x :: xs) = (length x) :: allLength xs


insertion : Ord el => el -> Vect len el -> Vect (S len) el
insertion x [] = [x]
insertion x (y :: xs) = case x < y of
                             False => y :: insertion x xs
                             True => x :: insertion y xs

addMatrix:Num e => Vect r (Vect c e) -> Vect r (Vect c e) -> Vect r (Vect c e)
addMatrix [] [] = []
addMatrix (x :: xs) (y :: ys) = ?addMatrix_rhs_2
                    
