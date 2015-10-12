class SampleController < ApplicationController

  def index
  end

  def create
    schedule = IceCube::Schedule.new
    schedule.add_recurrence_rule(RecurringSelect.dirty_hash_to_rule(params[:fake_model][:recurring_rules]) )
    b = []
    time =DateTime.parse(params[:fake_model][:published_at_time])
    schedule.first(params[:fake_model][:count].to_i).each do |a| 
      b << Time.local(a.year, a.month, a.day, time.hour, time.min)
    end
    @record = b

  end
  
  def convert_date(date,time,count)
   
  end

end