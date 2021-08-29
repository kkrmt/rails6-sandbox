# == Schema Information
#
# Table name: customers
#
#  id               :bigint           not null, primary key
#  email            :string(255)      not null
#  family_name      :string(255)      not null
#  given_name       :string(255)      not null
#  family_name_kana :string(255)      not null
#  given_name_kana  :string(255)      not null
#  gender           :string(255)
#  birthday         :date
#  hashed_password  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Customer < ApplicationRecord
end
