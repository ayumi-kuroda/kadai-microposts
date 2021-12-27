class ApplicationController < ActionController::Base
    #Helperに定義していた logged_in? を使用
    include SessionsHelper 
    
    include Pagy::Backend
    
    #ログイン要求処理
    def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
