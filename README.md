Tennis Game Kata Refactoring Workshop
=====================================

This repo contains an exercise for our second refactoring workshop. For this session we have based our activities on Emily Bache's Tennis-Refactoring-Kata repo (which we've forked here).

We've restructured the repository to provide a quick-start introduction to refactoring techniques and to mimic the setup we used last time. The code to be refactored is found in the ``lib`` directory, and we have supplied unit tests in the ``spec`` directory.

##Setup

Here are the steps to get you started with the repo. We assume, naturally, that you have a working development machine with Ruby 1.9 or better on it. At Ryatta Group we use rbenv, and so we've included some optional elements - just skip them if you're using rvm or are not versioning your Ruby.

```sh
% git clone git@github.com:k00ka/tennis-kata.git
% cd tennis-kata
% gem install bundler
Fetching: bundler-1.7.4.gem (100%)
Successfully installed bundler-1.7.4
1 gem installed
% bundle
Fetching gem metadata from https://rubygems.org/.........
Resolving dependencies...
Installing rake 10.3.2
...
Using bundler 1.7.4
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.
```
######Note: if you use rbenv...
```sh
% rbenv rehash
```

## Rules and Specification

Imagine you work for a consultancy company, and one of your colleagues has been doing some work for the Tennis Society. The contract is for 10 hours billable work, and your colleague has spent 8.5 hours working on it. Unfortunately he has now fallen ill. He says he has completed the work, and the tests all pass. Your boss has asked you to take over from him. She wants you to spend an hour or so on the code so she can bill the client for the full 10 hours. She instructs you to tidy up the code a little and perhaps make some notes so you can give your colleague some feedback on his chosen design.

Tennis has a rather quirky scoring system, and to newcomers it can be a little difficult to keep track of. The tennis society has contracted you to build a scoreboard to display the current score during tennis games. 

Your task is to write a ``TennisGame`` class containing the logic which outputs the correct score as a string for display on the scoreboard. When a player scores a point, it triggers a method to be called on your class letting you know who scored the point. Later, you will get a call “score()” from the scoreboard asking what it should display. This method should return a string with the current score.

You can read more about Tennis scores [here](http://en.wikipedia.org/wiki/Tennis#Scoring) which is summarized below:

1. A game is won by the first player to have won at least four points in total and at least two points more than the opponent.
2. The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as "love", "fifteen", "thirty", and "forty" respectively.
3. If at least three points have been scored by each player, and the scores are equal, the score is "deuce".
4. If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is "advantage" for the player in the lead.

You need only report the score for the current game. Sets and Matches are out of scope.


Running the tests
-----------------
######Run the characterization test 
```sh
% rspec ./spec/gilded_rose_characterization_spec.rb
.

Finished in 0.00169 seconds
1 example, 0 failures
```
######Run approvals to see the differences between expected and actual test results
```sh
% approvals verify
```


There are three chunks of dirty code in the ``lib/`` directory that you may use as a starting point: ``tennis1.rb``, ``tennis2.rb`` and ``tennis3.rb``. Before you do anything you need to nominate one of these by moving, copying or symlinking it to ``tennis.rb``. If you prefer to use symlinking, here's how its done:
```sh
rm -f lib/tennis.rb
ln -s lib/tennis1.rb lib/tennis.rb
```

With the old code and unit tests, we're ready to take on the job of refactoring. On Ruby Hack Night, we suggest you focus on the following goals based on your capabilities:

Beginners
===
1. refactor lib/tennis.rb, making it 

Intermediate
1. refactor lib/tennis.rb,
2. refactor lib/tennis.rb to follow the State pattern

Advanced
1. refactor lib/tennis.rb
2. refactor lib/tennis.rb
1. refactor lib/tennis.rb so that it is easier for you
2. achieve the primary goal of implementing "conjured" items, and
3. achieve any or all of the stretch goals, if you found the above a bit too easy.

Your mission is the same as in the original Gilded Rose Kata.  Have fun and watch out for the goblin!

Final Notes
===
If you like this Kata, you may be interested in Emily Bache's book, ["The Coding Dojo Handbook"](https://leanpub.com/codingdojohandbook)
