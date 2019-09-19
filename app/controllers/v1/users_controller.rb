class V1::UsersController < ApplicationController
	skip_before_action :authorized, only: [:create]
    # validates :username, presence: true, uniqueness: true
    # validates :username, uniqueness: { case_sensitive: false }
    # validates :email, uniqueness: true, presence: true, format: { with: /\S+@\S+\.\S+/ }
    # after_create :send_welcome_email

	def profile
	    render json: { user: UserSerializer.new(current_user) }, status: :accepted
	end
	
	def create
	@user = User.create(user_params)
		if @user.valid?
		@token = encode_token(user_id: @user.id)
		render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
		else
		render json: { error: 'failed to create user, username may already exist or an error occured' },
		status: :not_acceptable
		end
	end

	private

	 	def send_welcome_email
	 		Notification.new_account(self).deliver_later
	 	end
		def user_params
		params.require(:user).permit(:username, :password, :address, :state, :city, :email, :zip)
		end
end
