class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: "Regina", password: "Praktikantin", except: [:index, :show]
end
