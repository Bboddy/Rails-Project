class StaticPublicController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[landing_page privacy]
    def landing_page
    end
end
