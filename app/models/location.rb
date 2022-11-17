class Location < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Location.create! row.to_hash
        end
    end
end
