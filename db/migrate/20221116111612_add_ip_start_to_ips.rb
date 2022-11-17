class AddIpStartToIps < ActiveRecord::Migration[7.0]
  def change
    add_column :ips, :ip_start, :string
    add_column :ips, :ip_end, :string
  end
end
