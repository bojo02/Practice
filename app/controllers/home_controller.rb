class HomeController < ApplicationController
    def home
        @ip = "#{client_ip}"
    end

    def distance
      begin
        @ip = (IPAddress params[:ip]).to_i

        @user_ip_range = Ip.where('ip_end_number >= :ip AND ip_start_number <= :ip', ip: @ip)

        if(@user_ip_range.empty?)
            redirect_to root_path, alert: "Can't find your location under this ip..."
        else
            @user_location = Location.find_by(geoname_id: @user_ip_range[0].geoname_id)
            @storages = Storage.all
    
            @storage = @storages[0]
    
            @storages.each do |storage|
                if(calculateDistance(@user_ip_range[0].latitude, @user_ip_range[0].longitude, storage.ip.latitude, storage.ip.longitude, "K") <
                   calculateDistance(@user_ip_range[0].latitude, @user_ip_range[0].longitude, @storage.ip.latitude, @storage.ip.longitude, "K") )
                   @storage = storage
                end
            end
            @distance = calculateDistance(@user_ip_range[0].latitude, @user_ip_range[0].longitude, @storage.ip.latitude, @storage.ip.longitude, "K")
        end
      rescue StandardError => e
        redirect_to root_path, alert: "Invalid IP..."
      end

        
    end

    def calculateDistance(lat1, lon1, lat2, lon2, unit)
        if (lat1 == lat2) && (lon1 == lon2)
          return 0
        else
          theta = lon1 - lon2
          dist = Math.sin(lat1 * Math::PI / 180) * Math.sin(lat2 * Math::PI / 180) + Math.cos(lat1 * Math::PI / 180) * Math.cos(lat2 * Math::PI / 180) * Math.cos(theta * Math::PI / 180)
          dist = Math.acos(dist)
          dist = dist * 180 / Math::PI
          miles = dist * 60 * 1.1515
          unit = unit.upcase
      
          if unit == 'K'
            return miles * 1.609344
          elsif unit == 'N'
            return miles * 0.8684
          else
            return miles
          end
        end
      end

    private def client_ip
        request.remote_ip
      end
end
