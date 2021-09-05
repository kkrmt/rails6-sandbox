# == Schema Information
#
# Table name: task_subjects
#
#  id              :bigint           not null, primary key
#  name            :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)
#  type            :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class TaskSubject < ApplicationRecord
end
