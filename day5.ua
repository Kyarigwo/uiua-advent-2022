DayFiveInput ← &fras "day5input/input.txt"

I ← $     [D]
    $ [N] [C]
    $ [Z] [M] [P]
    $  1   2   3
    $
    $ move 1 from 2 to 1
    $ move 3 from 1 to 3
    $ move 2 from 2 to 1
    $ move 1 from 1 to 2

# I
DayFiveInput

⊜□¬⌕"\n\n" . # divide into crates and moves
⊃(⊔ ⊢)(⊔ ⊢ ⇌)

# Crates
⬚@ ⊜∘ ≠ @\n .         # split and pad
▽ ⊃(≠@ ⊢ ⇌)(⍉ ⍜⇌(↘1)) # reverse, create stencil from numbers, transpose rest
⬚@ ≡(▽ ≠ @ .)         # put tops on left, and pad right
≡⬚@ ↙ /×△.            # pad to max size spaces

# Moves
⬚@ ⊜∘ ≠ @\n. :

≡(⇌ + 0_¯1_¯1 ≡(parse ⊔) ↘1 regex "move (\\d+) from (\\d+) to (\\d+)")

Push ← ⍜⊡ (↙ ⊃⋅⧻ ⊂ :)
Pop ← ⍜⊡ (:⊙⬚@ ↙⊃⊃↙⋅⧻↘ :)
MoveOne ← Push ⊙⊙⇌ ⊙Pop ⊙⊙:
MoveTwo ← Push ⊙Pop ⊙⊙:

# part 1
,,
≡⊢∧(MoveOne ⊃⊃(⊡0)(⊡1)(⊡2))

# part 2
⊙(≡⊢∧(MoveTwo ⊃⊃(⊡0)(⊡1)(⊡2)))
