class User < ApplicationRecord
  def self.from_token_payload(payload)
    u = find_by(sub: payload['sub'])
    pp u.present? ? u : "#{payload['sub']} is not exists."
    create!(sub: payload['sub']) if u.blank?
  end
end
