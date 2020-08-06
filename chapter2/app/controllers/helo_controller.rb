class HeloController < ApplicationController
    def index
        render plain: 'Hello this is Rails sample page!'
    end
end
