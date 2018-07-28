# README

This is my solution to the Codewars Kata [Valid Parentheses](https://www.codewars.com/kata/valid-parentheses/train/ruby)

The challenge is take a string and determine if it contains a valid set of parentheses (namely if within a block
of code they are in the correct order). For example:

    () returns true
    )( returns false
    ()()() returns true
    (()) returns true
    ())() returns false

The logic test should also still work if there are other characters in the string.


# STYLISTIC CHOICES

Although not required for a working solution, I have included an initial check at the start of the method to determine if the string contains and equal number of left and right brackets, as this allows us to immediately eliminate unbalanced strings.

My initial solution used a hash to keep a count of left and right brackets, but the final solution is simpler
by having a count that increases for each left bracket and decreases for each right bracket.


# TESTS

I have included 8 test scenarios, covering empty strings, solitary brackets, valid and invalid bracket combinations
and strings including other characters.

This solution has also passed the Codewars tests, but details of what these comprise are not provided on the site.


