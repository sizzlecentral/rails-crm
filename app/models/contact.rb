class Contact < ApplicationRecord

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_details
    "#{first_name} #{last_name} (#{email})"
  end

end
