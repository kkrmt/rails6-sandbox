# == Schema Information
#
# Table name: addresses
#
#  id            :bigint           not null, primary key
#  customer_id   :bigint           not null
#  type          :string(255)      not null
#  postal_code   :string(255)      not null
#  prefectures   :string(255)      not null
#  city          :string(255)      not null
#  address1      :string(255)      not null
#  address2      :string(255)      not null
#  company_name  :string(255)      default(""), not null
#  division_name :string(255)      default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Address < ApplicationRecord
end
