DayFourInput ← &fras "day4input/input.txt"

I ← $ 2-4,6-8
    $ 2-3,4-5
    $ 5-7,7-9
    $ 2-8,3-7
    $ 6-6,4-6
    $ 2-6,4-8

# I
DayFourInput

⊜□¬⌕@\n. # break into lines
≡(↯ 2_2 ⊜parse =0∊:"-,".⊔)

⍜(☇1) (≡(□+⊃∘(⇡+1-)⍘⊟))

# part 1
/+≡(↥⊃(/↧∊:)(/↧∊)⊃(⊔⊡0)(⊔⊡1)) .

# part 2
/+≡(/↥♭⊞=⊃(⊔⊡0)(⊔⊡1)) :
