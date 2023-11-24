# #########################  Day 2

DayTwoInput ← &fras "Day2Input/guide.txt"

I ← $ A Y
    $ B X
    $ C Z

DayTwoInput # input
# I

r ← 0
p ← 1
s ← 2

# rules.
R ← ≡↻ 1_0_¯1 ¤0_1_2

# first index is opponent, second player
---
⍤ "player wins" = 2 ⊡:R r_p
⍤ "player loses" = 0 ⊡:R p_r
⍤ "draw" = 1 ⊡:R r_r
---

▽¬⌕@ . # remove spaces
↧∩(⊗ :) "ABC" , "XYZ"
⊜∘¬⌕3. # break into lines

# part 1
#  # ×3≡(⊡∶R) # Finds results score
#  # +1≡(⊡1)  # Finds move score
S ← /++⊃(×3≡(⊡:R))(+1≡(⊡1)) # Combine to give final result
:S.                         # score for part one

# # part 2
# # pick opponent move on R gives row of results for that move, so
# # index of result then gives move to get that result

≡(⊗ ⊃(⊢⇌)(⊡⊢)):¤R.
≡⊢: # list of his moves
⍉⊟  # zip them to give the same type as in part 1
S   # gives final result using the formular from part one
