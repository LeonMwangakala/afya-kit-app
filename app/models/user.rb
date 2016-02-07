class User < ActiveRecord::Base
  belongs_to :profile, polymorphic: true 

  def role
    profile.profile_type.downcase # 'doctor' or 'patient'
  end

end