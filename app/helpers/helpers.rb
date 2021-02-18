class Helpers

    # the test for this uses user_id instead of id.  
    # uses it as a string, but other test uses it as a symbol
    # binding.pry
    def self.current_user(session)
       @user = User.find_by_id(session[:user_id])
    end
    
    def self.is_logged_in?(session)
        !!session[:user_id]
    end
    
end