class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :addresses
  has_many :comments
  has_many :invoices
  accepts_nested_attributes_for :addresses

  validates :username, length: { in: 4..20 }
  validates_presence_of :first_name, :last_name, :username, :sex, :birthdate
  validates :username, :uniqueness => { :case_sensitive => false }, format: {with: /\A\w+\z/}, :allow_blank => true

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end


end
