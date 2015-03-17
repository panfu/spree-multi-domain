class AddMissingColumnsFor30Stable < ActiveRecord::Migration
  def self.up
    change_table :spree_payment_methods do |t|
      t.string :environment
    end
    change_table :spree_stores do |t|
      t.string :site_name
    end
  end

  def self.down
    change_table :spree_stores do |t|
      t.remove :environment
    end
    change_table :spree_payment_methods do |t|
      t.remove :site_name
    end
  end
end
