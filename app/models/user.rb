class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_secure_password
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  # has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  # has_many :received_messages, class_name: "Message", foreign_key: "receiver_id"
end
