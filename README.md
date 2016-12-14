# FizzBuzz Pair Programming Challenge #
Pair Partner - [Joe Marriott] (https://github.com/J-Marriott)

## The Challenge ##
The challenge was to make a simple “FizzBuzz” program that accepted one integer value into a method called fizzbuzz. The method checks for the following conditions: if the integer is divisible by 3 it returns ‘fizz’, if the integer is divisible by 5 it returns ‘buzz’, if the integer is divisible by 3 and 5 it returns ‘fizzbuzz’ and if none of the conditions are met it returns the integer.

As part of the challenge we took it in turns writing a failing test while the second partner had to write some code to make the test pass. We continued this process until all test were passed and the challenge was complete.

We split the task into several steps which are highlighted below.

## <b>Step 1</b> - Setting up the local Repository ##

Firstly we created a local repository on our computers

```shell
> mkdir fizzbuzz                      # Make the fizzbuzz directory
> cd fizzbuzz                         # Move to the fizzbuzz directory
> git init                            # Initialise the local git repository
> touch README.md                     # Create a blank README file
> git add README.md                   # Added the README file from the staging area to the repository
> git commit -m "Initial Commit"      # Commited the changes
```

## <b>Step 2</b> - Setting up the Github Repository ##

We logged into our Github account and created a repository called 'fizzbuzz' without initialising the "README.md" file because we had already created one

We then linked our local repository to the Github repository

```shell
> git remote add origin https://github.com/adrianeyre/fizzbuzz.git    # Link repositories
> git push -u origin master                                           # Push local to remote
```
