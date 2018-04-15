class LibraryPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @library = model
  end

  def index?
    @user = User.find(@library.in_possession_of)
    @current_user.admin?  or @current_user == @user
  end

  def show?
    @user = User.find(@library.in_possession_of)
    @current_user.admin? or @current_user == @user
  end

  def update?
    @user = User.find(@library.in_possession_of)
    @current_user.admin? or @current_user == @user
  end

  def destroy?
    @user = User.find(@library.in_possession_of)
    @current_user.admin? or @current_user == @user
  end

end
