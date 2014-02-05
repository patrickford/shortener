class Testing < ActiveRecord::Migration

    def up
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

    def down
      drop_table :links
      drop_table :clicks
    end
end