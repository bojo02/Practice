class Ip < ApplicationRecord
    require 'ipaddr'
    require 'ipaddress'
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
           
            ip_hash = {}
            ip_hash[:network] = row['network']
            ip_hash[:geoname_id] = row['geoname_id']
            ip_hash[:registered_country_geoname_id] = row['registered_country_geoname_id']
            ip_hash[:represented_country_geoname_id] = row['represented_country_geoname_id']
            ip_hash[:is_anonymous_proxy] = row['is_anonymous_proxy']
            ip_hash[:is_satellite_provider] = row['is_satellite_provider']
            ip_hash[:postal_code] = row['postal_code']
            ip_hash[:latitude] = row['latitude']
            ip_hash[:longitude] = row['longitude']
            ip_hash[:accuracy_radius] = row['accuracy_radius']
            ip_hash[:ip_start] = (IPAddress row['network']).to_s
            ip_hash[:ip_end] = (IPAddress (IPAddress row['network']).to_i+1).to_s
            ip_hash[:ip_start_number] = (IPAddress row['network']).to_i
            ip_hash[:ip_end_number] = if(IPAddr.new row['network']).prefix == 31 then (IPAddress row['network']).to_i+1 else (IPAddress row['network']).broadcast.to_i end

            ip = Ip.create(ip_hash)
        end
        
    end
   
 
end
