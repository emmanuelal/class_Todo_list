class Profile < ActiveRecord::Base
   belongs_to :user
   validates :gender, :presence => true, :inclusion => { :in => %w(male female) }
   validate :username_info
   validate :gender_name_check
  

   

   def username_info
  	   
  	   if first_name.nil?  && last_name.nil? 
          errors.add(:last_name ,"Your lastname or firstname both can not be null ")
     end   
  end

  def gender_name_check   
  if first_name == 'Sue' && gender == 'male'      
   errors.add(:first_name, 'cannot be a boy named Sue')   
  end  
end  

def self.get_all_profiles(min,max)
Profile.where("birth_year BETWEEN ? AND ?",min, max).order(birth_year: :asc)
   end
end
