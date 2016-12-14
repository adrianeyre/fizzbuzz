# FizzBuzz Pair Programming Challenge #
Pair Partner - [Joe Marriott] (https://github.com/J-Marriott)

## The Challenge ##
The challenge was to make a simple “FizzBuzz” program that accepted one integer value into a method called fizzbuzz. The method checks for the following conditions: if the integer is divisible by 3 it returns ‘fizz’, if the integer is divisible by 5 it returns ‘buzz’, if the integer is divisible by 3 and 5 it returns ‘fizzbuzz’ and if none of the conditions are met it returns the integer. Example below
```shell
1 --> 1
2 --> 2
3 --> fizz
4 --> 4
5 --> buzz
6 --> fizz
7 --> 7
8 --> 8
9 --> fizz
10 --> buzz
11 --> 11
12 --> fizz
13 --> 13
14 --> 14
15 --> fizzbuzz
16 --> 16
17 --> 17
18 --> fizz
19 --> 19
20 --> buzz
```

As part of the challenge we took it in turns writing a failing test while the second partner had to write some code to make the test pass. We continued this process until all test were passed and the challenge was complete. This process is commonly  known as the "Ping Pong" method

We split the task into several steps

* [Step 1 - Setting up the local Repository] (#step1)
* [Step 2  - Setting up the Github Repository] (#step2)
* [Step 3 - Link Repositories with Paired Partners] (#step3)
* [Step 4 - Setting up RSPEC] (#step4)
* [Step 5 - Creating a test in RSPEC] (#step5)
* [Step 6 - Final Tests and Code] (#step6)

## <a name="step1"><b>Step 1</b> - Setting up the local Repository</a> ##

Firstly we created a local repository on our computers

```shell
> mkdir fizzbuzz                      # Make the fizzbuzz directory
> cd fizzbuzz                         # Move to the fizzbuzz directory
> git init                            # Initialise the local git repository
> touch README.md                     # Create a blank README file
> git add README.md                   # Added the README file from the staging area to the repository
> git commit -m "Initial Commit"      # Commited the changes
```

## <a name="step2"><b>Step 2</b> - Setting up the Github Repository</a> ##

We logged into our Github account and created a repository called 'fizzbuzz' without initialising the "README.md" file because we had already created one

We then linked our local repository to the Github repository

```shell
> git remote add origin https://github.com/adrianeyre/fizzbuzz.git    # Link repositories
> git push -u origin master                                           # Push local to remote
```

## <a name="step3"><b>Step 3</b> - Link Repositories with Paired Partners</a> ##

So that we were able to collaborate our projects we had to give each other permission to our repositories.

```shell
> git remote add <pair-partner> <URL-to-pair-partners-repo>     # Link my repository with Joes's

> git fetch                                                     # Fetch Joe's repository
> git pull <pair-partner> master                                # Pull it to my local repository
```

After we complete a section of code the partner who was coding had to add their file, commit them and then push the file up to their Github repository.

```shell
> git add <filename>            # Add file from staging area to repository
> git commit -m "Description"   # Commit changes
> git push                      # Push local to remote
```

## <a name="step4"><b>Step 4</b> - Setting up RSPEC</a> ##

We used the RSPEC framework to test our code to make sure it worked 100%. RSPEC once initialised creates two folders 'spec' where it stores the testing files and ‘lib’ where it stores the application code. Initially we had to install the RSPEC Gem then run the command to set up the directory structure.

```shell
> gem install rspec
> rspec --init
```

## <a name="step5"><b>Step 5</b> - Creating a test in RSPEC</a> ##

The first partner created a file called ‘fizzbuzz_spec.rb” in the ./spec directory. We named it in this way because the application file was going to be called ‘fizzbuzz.rb’ and was going to be saved in the ./lib directory.

The first test was nice and simple to check if we pass the integer 3 into the method ‘fizzbuzz’ it should return the string ‘fizz’

```ruby
require 'fizzbuzz'                      # Let RSPEC know what file to test

describe 'fizzbuzz' do                  # The method we're testing
  it '3 equals to fizz' do              # Description of test
    expect(fizzbuzz(3)).to eq 'fizz'    # Condition for test
  end
end
```

We then ran the RSPEC command to check if our tested passed or failed

```shell
> rspec ./spec/fizzbuzz_spec.rb
```

As the file at this point was not created RSPEC gave some error messages, so it was down to the second partner to create the file and write the code that passed the test.

We continued creating tests and code to pass the tests until we met all the requirements of the application.

## <a name="step6"><b>Step 6</b> - Final Tests and Code</a> ###

RSPEC tests
```ruby
require 'fizzbuzz'

describe 'fizzbuzz method' do
  it '3 equals to fizz' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
  it '5 equals to buzz' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
  it '15 equals to fizzbuzz' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
  it '8 equals to 8' do
    expect(fizzbuzz(8)).to eq 8
  end
end

describe 'fizzbuzz Fixnum' do
  it '3 equals to fizz' do
    expect(3.fizzbuzz).to eq 'fizz'
  end
  it '5 equals to buzz' do
    expect(5.fizzbuzz).to eq 'buzz'
  end
  it '15 equals to fizzbuzz' do
    expect(15.fizzbuzz).to eq 'fizzbuzz'
  end
  it '8 equals to 8' do
    expect(8.fizzbuzz).to eq 8
  end
end
```

Ruby code
```ruby
def fizzbuzz(num)
  result = ""
  result += "fizz" if num % 3 == 0
  result += "buzz" if num % 5 == 0
  result == "" ? num : result
end

class Integer
  def fizzbuzz
    result = ""
    result += "fizz" if self % 3 == 0
    result += "buzz" if self % 5 == 0
    result == "" ? self : result
  end
end
```
