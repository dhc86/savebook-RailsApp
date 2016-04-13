class Lend < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  # def due_date
  #   errors.add(:due, 'due date must be after checkout') if due && due < check_out
  # end

  # def checkin_date
  #   errors.add(:checkin, 'checkin date must be after checkout') if checkin && check_in < check_out 
  # end

  # def overdue?
  #   if check_in
  #     return check_in > due 
  #   elsif check_in.nil?
  #     return due < Date.today
  #   end
  # end

  # Make due date, checkin date and checkout date in the form when lending is happeninh
  # <input type="date" name="due"> 
end
