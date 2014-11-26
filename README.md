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
##Note: if you use rbenv...
```sh
% rbenv rehash
```

## Rules and Specification

Imagine you work for a consultancy company, and one of your colleagues has been doing some work for the Tennis Society. The contract is for 10 hours billable work, and your colleague has spent 8.5 hours working on it. Unfortunately he has now fallen ill. He says he has completed the work, and the tests all pass. Your boss has asked you to take over from him. She wants you to spend an hour or so on the code so she can bill the client for the full 10 hours. She instructs you to tidy up the code a little and perhaps make some notes so you can give your colleague some feedback on his chosen design.

Tennis has a rather quirky scoring system, and to newcomers it can be a little difficult to keep track of. The tennis society has contracted you to build a scoreboard to display the current score during tennis games. 

Your task is to write a ``TennisGame`` class containing the logic which outputs the correct score as a string for display on the scoreboard. When a player scores a point, it triggers a method to be called on your class letting you know who scored the point. Later, you will get a call ``score`` from the scoreboard asking what it should display. This method should return a string with the current score.

You can read more about Tennis scores [here](http://en.wikipedia.org/wiki/Tennis#Scoring) which is summarized below:

1. A game is won by the first player to have won at least four points in total and at least two points more than the opponent.
2. The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as "love", "fifteen", "thirty", and "forty" respectively.
3. If at least three points have been scored by each player, and the scores are equal, the score is "deuce".
4. If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is "advantage" for the player in the lead.

You need only report the score for the current game. Sets and Matches are out of scope.

## Your Mission (Should You Choose to Accept It)

There are three chunks of dirty code in the ``lib/`` directory any or all of which can be used as a starting point. They are called ``tennis1.rb``, ``tennis2.rb`` and ``tennis3.rb``. At any point in your journey tonight, you'll be working on one of these files. Because of this, we have set up the tests to work on the file called ``tennis.rb``. So, before you do anything you need to nominate one of these files by moving, copying or symlinking it to ``tennis.rb`` (note: the initial ``tennis.rb`` is a copy of ``tennis1.rb``).

I prefer to use symlinking, so here's how I prepared my repo for the first round of refactoring:
```sh
rm -f lib/tennis.rb
ln -s lib/tennis1.rb lib/tennis.rb
```
Later, I did this to work on the second file:
```sh
rm -f lib/tennis.rb
ln -s lib/tennis2.rb lib/tennis.rb
```
With the old code and unit tests, we're ready to take on the job of refactoring. On Ruby Hack Night, we suggest you focus on the following goals based on your team's capabilities:

##Beginners
1. refactor ``tennis1`` for cleanliness and clarity
2. refactor ``tennis2`` for cleanliness and clarity trying to improve on your first attempt
3. refactor ``tennis3`` for cleanliness and clarity trying to improve on your previous attempts

##Intermediates
1. refactor ``tennis1`` for cleanliness and clarity
2. refactor ``tennis2`` to follow the ["State pattern"](http://en.wikipedia.org/wiki/State_pattern)

##Advanced
1. refactor ``tennis1`` for cleanliness and clarity
2. refactor ``tennis2`` to follow the ["State pattern"](http://en.wikipedia.org/wiki/State_pattern)
3. refactor ``tennis3`` to follow the ["Visitor pattern"](http://en.wikipedia.org/wiki/Visitor_pattern)

Running the tests
-----------------
To test the code in ``tennis.rb``, do the following:
```sh
rspec ./spec/tennis_spec.rb
.

Finished in 0.00115 seconds
1 example, 0 failures
```

Final Notes
===
If you like this Kata, you may be interested in Emily Bache's book, ["The Coding Dojo Handbook"](https://leanpub.com/codingdojohandbook)
