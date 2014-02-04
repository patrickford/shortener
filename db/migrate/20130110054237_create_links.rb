# Put your database migration here!
#
# Each one needs to be named correctly:
# timestamp_[action]_[class]
#
# and once a migration is run, a new one must
# be created with a later timestamp.

class CreateLinks < ActiveRecord::Migration
    # PUT MIGRATION CODE HERE TO SETUP DATABASE

    def self.up
      create_table :links do |t|
        t.string :url
        t.string :CODE
        t.timestamps
    end

    def self.down
      drop_table :links
    end

end