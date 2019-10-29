require 'time'

module Jekyll
  module DaysAgoFilter
    def days_ago(date_time)
      time_ago = (Time.now - date_time).to_i

      case time_ago
        when 0 then 'just now'
        when 1 then 'a second ago'
        when 2..59 then time_ago.to_s+' seconds ago'
        when 60..119 then 'a minute ago' #120 = 2 minutes
        when 120..3540 then (time_ago/60).to_i.to_s+' minutes ago'
        when 3541..7100 then 'an hour ago' # 3600 = 1 hour
        when 7101..82800 then ((time_ago+99)/3600).to_i.to_s+' hours ago'
        when 82801..172000 then 'a day ago' # 86400 = 1 day
        else ((time_ago+800)/(60*60*24)).to_i.to_s+' days ago'
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::DaysAgoFilter)
