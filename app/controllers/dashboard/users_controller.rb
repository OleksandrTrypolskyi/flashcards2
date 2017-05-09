# File for Dashboard::UsersController class
class Dashboard::UsersController < Dashboard::BaseController
  def destroy
    authorize current_user
    current_user.destroy
    redirect_to login_path, notice: 'Пользователь успешно удален.'
  end

  def admin_list
    authorize current_user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
