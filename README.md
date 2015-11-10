![DataRetriever Logo](DataRetriever-logo.png)

#DataRetriever ORM
* Facilitates SQL queries in Ruby environment
* Integrates 'activesupport' gem for 'sqlite3' database connection
* RSpec tests for main features
* Test database lovingly translated and adapted from open source MySQL file to SQLite3 syntax

##How to Run These Files
* Using Ruby
* Bundle Install Gems
  * Use 'cd' command to navigate to the project folder
  * Run command 'bundle install' to install gems
* Opening program
  * Enter 'irb' to test manually:
    load 'lib/file_list.rb'
    class Country < SQLObject
    end
    Country.table_name
    Country.find(1)
    Country.find(1).population

##How to Run RSpec Tests
* Follow the steps in 'How to Run These Files' above ('exit' out of 'irb')
* Enter 'rspec' to run tests

##Using Commands in Rails Console
* List of Commands
* Queries to Try
* Data Set
