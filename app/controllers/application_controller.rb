class ApplicationController < ActionController::Base
    #Helperに定義していた logged_in? を使用
    include SessionsHelper 
    
    include Pagy::Backend
    
    private
    
    #ログイン要求処理
    def require_user_logged_in
      unless logged_in?
        redirect_to login_url
      end
    end
   
    #Micropost、フォロー、フォロワーの数をカウント
    def counts(user)
        @count_microposts = user.microposts.count
        @count_followings = user.followings.count
        @count_followers = user.followers.count
    end
end
