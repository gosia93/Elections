class RolesController < InheritedResources::Base
before_filter :authenticate_user!
load_and_authorize_resource
  private

    def role_params
      params.require(:role).permit(:name)
    end
    def show
      if @role.users.length == 0
        @assosciated_users = "None"
      else
        @assosciated_users = @role.users.map(&:name).join(", ")
       end
     end
     def new
     end
     def create
     end
     private
     endv
end

