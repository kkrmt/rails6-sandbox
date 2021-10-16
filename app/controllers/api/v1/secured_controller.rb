module Api
  module V1
    class SecuredController < ApplicationController
      # before_actionに :authenticate_user追加 => Securedリソースを守れる
      before_action :authenticate_user
      def index
        render json: {
          message: "ID: #{current_user.id}, SUB: #{current_user.sub}",
        }
      end
    end
  end
end