class SearchController < ApplicationController
	def search
		session[:results] = Program.search_by_tag(params[:query])
		redirect_to "/results"
	end

end