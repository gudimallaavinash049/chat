class RegisterController<ApplicationController
    def new
   use=User.new
    end

    def signup
        use=User.new(username:params[:register][:username],password:params[:register][:password])
        use = User.find_by(username: params[:register][:username])
        
        if use.present?
            flash[:error] = "User already exist please login"
            redirect_to login_path
        else

            use=User.new(username:params[:register][:username],password:params[:register][:password])
            use.save
            flash[:sucess] = "Regidtration Sucessfull please make a login"
            redirect_to login_path

        end

    end
end