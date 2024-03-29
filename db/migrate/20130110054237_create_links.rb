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
        t.string :code
        t.datetime :created_at
        t.datetime :updated_at
        t.integer :count

      create_table :clicks do |t|
        t.integer :link_id
        t.datetime :created_at
        t.datetime :updated_at
    end

    def self.down
      drop_table :links
      drop_table :clicks
    end

end