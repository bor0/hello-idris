module Main

import Effects
import Effect.Random
import Effect.StdIO
import Effect.System

dolly_lyrics : List String
dolly_lyrics = [
	"Hello, Dolly",
	"Well, hello, Dolly",
	"It's so nice to have you back where you belong",
	"You're lookin' swell, Dolly",
	"I can tell, Dolly",
	"You're still glowin', you're still crowin'",
	"You're still goin' strong",
	"We feel the room swayin'",
	"While the band's playin'",
	"One of your old favourite songs from way back when",
	"So, take her wrap, fellas",
	"Find her an empty lap, fellas",
	"Dolly'll never go away again",
	"Hello, Dolly",
	"Well, hello, Dolly",
	"It's so nice to have you back where you belong",
	"You're lookin' swell, Dolly",
	"I can tell, Dolly",
	"You're still glowin', you're still crowin'",
	"You're still goin' strong",
	"We feel the room swayin'",
	"While the band's playin'",
	"One of your old favourite songs from way back when",
	"Golly, gee, fellas",
	"Find her a vacant knee, fellas",
	"Dolly'll never go away",
	"Dolly'll never go away",
	"Dolly'll never go away again"
]

get_lyric : { [RND, STDIO, SYSTEM] } Eff ()
get_lyric = do srand !time
               dollyindex <- rndInt 0 (toIntegerNat (length dolly_lyrics))
               let natindex = fromIntegerNat dollyindex
               let chosenlyric = index' natindex dolly_lyrics
               case chosenlyric of
                  Just x  => putStr x
                  Nothing => putStr ""

main : IO ()
main = run get_lyric
