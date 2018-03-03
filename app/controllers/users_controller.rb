class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
def index
  @users = User.all
  @promocode = Promocode.all
end
  def promo
    # user = current_user.credit

  end
  def add_promo
    @promocode = Promocode.find_by(code: params[:code])
  @user= current_user
    unless @promocode.current_user.include
      unless  @promocode.users.count >= @promocode.limitations_use
  	@user.update_attributes(credit: @user.credit + @promocode.credit)

      end
    end

# end
    #
    # @promocode =   Promocode.where(:code).pluck(:id).amount
    # code = params[:promocode]
    # user = User.find(session[:user_id])
    #
    #     #  @promocode  = Promocode.find(params[:id])
    #    if code
    #      if user.promocodes.include?(promo_code)
    #        message = 'This promo code has already been used.'
    #      else
    #        user.promo_codes << code
    #        user.credits += code.amount
    #        if referring_user && user.referring_user_id.nil? && User.find_by_id(referring_user).present?
    #          user.referring_user_id = referring_user
    #        end
    #        if user.save
    #          message = 'Promo code successfully used!'
    #        else
    #          message = 'Error using promo code. Please try again or contact customer service.'
    #        end
    #      end
    #    else
    #      message = 'Not a valid promo code.'
    #    end
    #  respond_to do |format|
    #    format.js {  flash[:notice] = message }
    #  end
  end





 end
