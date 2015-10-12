class SampleController < ApplicationController

  def index
  end

  def create
    schedule = IceCube::Schedule.new
    schedule.add_recurrence_rule(RecurringSelect.dirty_hash_to_rule(params[:fake_model][:recurring_rules])  )
    @record = convert_date(schedule, params[:fake_model][:published_at_time],10)
  end
  
  def convert_date(date,time,count)
    @a = []
    time = DateTime.parse(time)
    date.first(count).each do |a| 
      @a << Time.local(a.year,a.month ,a.day, time.hour, time.min)
    end
    return @a 
  end

end