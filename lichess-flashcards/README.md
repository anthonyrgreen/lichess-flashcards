# lichess-flashcards

The goal of this project is to create a pipeline which grabs a Lichess user's
games using the Lichess API, picks important moments from those games, and then
creates interactive Anki flashcards out of them.

How are "important moments" defined? The inital plan is to use Lichess's superb
analysis feature, which suggests user mistakes, along with superior 
alternatives. A flashcard, then, will consist of a position which must be
played to its logical conclusion.

Future ideas include figuring out a way to hook up a running Stockfish instance
to the flashcards, so that more than one line can be accepted, so long as it
maintains evaluation at a certain level.

For Anki card template, see https://ankiweb.net/shared/info/1176122148.

✓ x | OBJECTIVE
--------------------------------------------------------
[ ] | Grab a lichess user's games since a certain date.
[ ] | Pick relevant positions from those games.
[ ] | Convert those positions to Anki flashcards.
[ ] | If possible, add those to an existing Anki deck.

