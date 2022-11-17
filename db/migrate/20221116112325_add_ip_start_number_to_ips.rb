class AddIpStartNumberToIps < ActiveRecord::Migration[7.0]
  def change
    add_column :ips, :ip_start_number, :integer
    add_column :ips, :ip_end_number, :integer
  end
end
