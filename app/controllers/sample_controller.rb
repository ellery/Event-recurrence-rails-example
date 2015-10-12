class SampleController < ApplicationController

  def index
  end

  def create
    schedule = IceCube::Schedule.new
    schedule.add_recurrence_rule(RecurringSelect.dirty_hash_to_rule(params[:fake_model][:recurring_rules])  )
    @record = schedule.first(10)
  end

end