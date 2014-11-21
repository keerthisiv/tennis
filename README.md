Tennis Game Kata Refactoring Workshop
=====================================

This repo contains an exercise for our second refactoring workshop.

For this session we have based our activities on Emily Bache's Tennis-Refactoring-Kata repo (which we've forked here).
was built to demonstrate "three advanced developer testing techniques as they apply to the [Gilded Rose Kata](http://craftsmanship.sv.cmu.edu/exercises/gilded-rose-kata)."  You can learn more about those techniques in the parent repository.

We've restructured this repository to provide a quick-start introduction to refactoring techniques by replacing Alistair's  refactored Gilded Rose Kata code with the original kruft (translated into Ruby by @professor - check it out here: https://github.com/professor/GildedRose), but retaining the awesome characterization tests Alistair built.

With the old code and characterization test, we're ready to take on the job of refactoring. On Ruby Hack Night, we suggest you focus on the following goals in this order:

1. refactor the solution so it is easier for you and your peer developers to understand,
2. achieve the primary goal of implementing "conjured" items, and
3. achieve any or all of the stretch goals, if you found the above a bit too easy.

Your mission is the same as in the original Gilded Rose Kata.  Have fun and watch out for the goblin!

##Setup

Here are the steps to get you started with the repo. We assume, naturally, that you have a working development machine with Ruby 1.8 or better on it. At Ryatta Group we use rbenv, and so we've included some optional elements - just skip them if you're using rvm or are not versioning your Ruby.

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
    Installing simplecov 0.9.1
    Using bundler 1.7.4
    Your bundle is complete!
    Use `bundle show [gemname]` to see where a bundled gem is installed.
    ```
######Note: if you use rbenv...
    ```sh
    % rbenv rehash
    ```

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


## Rules and Specification

Imagine you work for a consultancy company, and one of your colleagues has been doing some work for the Tennis Society. The contract is for 10 hours billable work, and your colleague has spent 8.5 hours working on it. Unfortunately he has now fallen ill. He says he has completed the work, and the tests all pass. Your boss has asked you to take over from him. She wants you to spend an hour or so on the code so she can bill the client for the full 10 hours. She instructs you to tidy up the code a little and perhaps make some notes so you can give your colleague some feedback on his chosen design.

There are three versions of this refactoring kata, each with their own design smells and challenges. I suggest you start with the first one, with the class "TennisGame1". The test suite provided is fairly comprehensive, and fast to run. You should not need to change the tests, only run them often as you refactor.

## The Scoring System Explained

Tennis has a rather quirky scoring system, and to newcomers it can be a little difficult to keep track of. The tennis society has contracted you to build a scoreboard to display the current score during tennis games. 

Your task is to write a “TennisGame” class containing the logic which outputs the correct score as a string for display on the scoreboard. When a player scores a point, it triggers a method to be called on your class letting you know who scored the point. Later, you will get a call “score()” from the scoreboard asking what it should display. This method should return a string with the current score.

You can read more about Tennis scores [here](http://en.wikipedia.org/wiki/Tennis#Scoring) which is summarized below:

1. A game is won by the first player to have won at least four points in total and at least two points more than the opponent.
2. The running score of each game is described in a manner peculiar to tennis: scores from zero to three points are described as "love", "fifteen", "thirty", and "forty" respectively.
3. If at least three points have been scored by each player, and the scores are equal, the score is "deuce".
4. If at least three points have been scored by each side and a player has one more point than his opponent, the score of the game is "advantage" for the player in the lead.

You need only report the score for the current game. Sets and Matches are out of scope.

If you like this Kata, you may be interested in Emily Bache's book, ["The Coding Dojo Handbook"](https://leanpub.com/codingdojohandbook)
