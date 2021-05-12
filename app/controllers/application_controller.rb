class ApplicationController < ActionController::API
    include ActionController::ImplicitRender # if you need render .jbuilder
    include ActionView::Layouts
end
