![DataRetriever Logo](DataRetriever-logo.png)

#DataRetriever ORM
* Facilitates SQL queries in Ruby environment
* Integrates 'activesupport' gem for 'sqlite3' database connection
* RSpec tests for main features
* Test database lovingly translated and adapted from open source MySQL file to SQLite3 syntax

##How to Run These Files
* Open Terminal App
* Bundle Install Gems
  * Navigate to the project folder
  * Run command 'bundle install' to install gems

##How to Run RSpec Tests
* Follow the steps in 'How to Run These Files' above
* Enter 'rspec' to run tests

##Opening program in Console
  * Enter 'irb' to test manually:
    * load 'lib/file_list.rb'
    * class Country < SQLObject
    * end
    * Country.table_name
    * Country.find(1)
    * Country.find(1).population
