# GiftHealth Engineering Project


## Install, run and testing

### Pre-run steps:

```
$ cd gifthealth/
```

### Requirements:

- rvm or rbenv
- ruby 3.0.3
- bundler version 2.2.32

### Grant permissions:

```
$ chmod +x bin/gifthealth
```

### Running the tests:

```
$ rspec
```

### Running the script:

```
bin/gifthealth public/pharmacy_system.txt
```


## Folders

### Bin Folder:

1. gifthealth - a written script for calling a class, to which I will pass the necessary classes as parameters. ARGV - array of arguments that we pass when running the script on the command line.

### Lib Folder:

1. validator.rb - in this file I wrote a file validation: does the specified file exist.
2. reader.rb - in this file I read my file.
3. data_collector.rb - in this file I will transform each line into an array consisting of "PatientName DrugName" and "EventName".
4. data_grouping.rb - in this file I group my data into a hash. The key will be an array: PatientName and DrugName.
5. counter.rb - in this file I count the value of filled prescriptions and income for each key.
6. total_income.rb - in this file I count the total values of filled prescriptions and income for each PatientName.
7. printer.rb - in this file I output the received data in accordance with the requirements.
8. performance.rb - in this file I have created a perform method in which I will use all classes and methods in the required order.

### Public:

1. pharmacy_system.txt - the file with the input data.

### Spec Folder

#### Lib Folder

1. validator_spec.rb - a unit test for a class Validator.
2. reader_spec.rb - a unit test for a class Reader.
3. data_collector_spec.rb - a unit test for a class DataCollector.
4. data_grouping_spec.rb - a unit test for a class DataGrouping.
5. counter_spec.rb - a unit test for a class Counter.
6. total_income_spec.rb - a unit test for a class TotalIncome.
7. printer_spec.rb - a unit test for a class Printer.
8. performance_spec.rb - a unit test for a class Performance.

#### Fixtures Folder

1. test.txt - the file with test data.
