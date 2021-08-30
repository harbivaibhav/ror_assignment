class CandidateController < ApplicationController
	def index
		@candid = get_candid
	end
	

	private

	def request_api(url)
	    response = Excon.get(
	      url,
	      headers: {
	        'X-RapidAPI-Host' => URI.parse(url).host
	      }
	    )
	    #return JSON.parse(response.body) if response.status = 200
	    
	    @response = JSON.parse(response.body)
		Kaminari.paginate_array(@response).page(params[:page])

	end

  	def get_candid
    	request_api("http://jsonplaceholder.typicode.com/users")
  	end
end
