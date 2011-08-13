class Calendar
  def self.feed
    "https://www.google.com/calendar/feeds/adicu.com_tud5etmmo5mfmuvdfb54u733i4%40group.calendar.google.com/private-03358b4ca63fc203a0904f99fd625e1c/basic"
  end
  
  def self.url
    "http://www.google.com/calendar/embed?src=adicu.com_tud5etmmo5mfmuvdfb54u733i4%40group.calendar.google.com&ctz=America/New_York"
  end

  def self.nextEvent
    events = Nokogiri::XML( open( Calendar.feed ) ).css( "entry" )
    
    unless events.empty?
      next_event_title = "Upcoming Events"
      next_event_start = Time.now + 1.years


      events.each do |event|
        event.css( "summary" ).first.content.scan( /When: (.*) to?/ ) do |x|
          event_time = Time.parse( x.first )
          if event_time > Time.now && event_time < next_event_start
            next_event_title = "Next Event: " << event.css( "title" ).first.content
            next_event_start = event_time
          end
        end
      end
      return next_event_title, self.url
    else
      title = "Upcoming Events"
      return title, self.url
    end
  end

end
