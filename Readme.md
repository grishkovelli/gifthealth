# GiftHealth Engineering Project

## How to run code

You can run .bin/gifthealth pharmacy_system.txt (or write your own file) and look at the output.


## Lib Folder

In this folder you can see next files:

1. validator.rb - in this file I wrote a file validation: does the specified file exist.
2. reader.rb - in this file I read my file.
3. data_collector.rb - in this file I will transform each line into an array consisting of "PatientName DrugName" and "EventName"
4. data_grouping.rb - in this file I group my data into a hash. The key will be an array: PatientName and DrugName.
5. counter.rb - in this file I count the value of filled prescriptions and income for each key.
6. total_income.rb - in this file I count the total values of filled prescriptions and income for each PatientName.
7. printer.rb - in this file I output the received data in accordance with the requirements.
8. performance.rb - in this file I have created a perform method in which I will use all classes and methods in the required order.


## Bin Folder

In this folder you can see next file:

1. gifthealth - a written script for calling a class, to which I will pass the necessary classes as parameters. ARGV - array of arguments that we pass when running the script on the command line.

## Spec Folder

### Lib Folder

In this folder I wrote unit tests for my classes. You can run rspec and make sure everything is working correctly.

### Fixtures Folder

In this folder you can see my file (test.txt) with the data for testing.
