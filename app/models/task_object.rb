# == Schema Information
#
# Table name: task_objects
#
#  id              :bigint           not null, primary key
#  title           :string(255)      not null
#  task_subject_id :bigint           not null
#  password_digest :string(255)
#  type            :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class TaskObject < ApplicationRecord
end
