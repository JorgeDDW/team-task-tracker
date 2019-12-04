class UserController < ApplicationController
    
    def show
        
    end

    def update
        
    end

    
    private

    def current_user_params
        params.require(:user).permit(:company, :email, :full_name )
    end
    

end