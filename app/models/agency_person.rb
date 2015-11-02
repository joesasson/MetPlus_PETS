class AgencyPerson < ActiveRecord::Base
  acts_as :user, validates_actable: false
  belongs_to :agency
  belongs_to :address
  has_and_belongs_to_many :agency_roles
<<<<<<< HEAD
  has_and_belongs_to_many :job_seekers, :join_table => "seekers_agency_people" #, through: :seekers_agency_people
  has_many :job_specialities
  has_many :job_categories, through: :job_specialities
=======
  has_and_belongs_to_many :job_categories, join_table: :job_specialities
  has_and_belongs_to_many :job_seekers, join_table: :seekers_agency_people
  
>>>>>>> development
  validates_presence_of :agency_id
end
