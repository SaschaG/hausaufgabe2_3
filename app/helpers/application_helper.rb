module ApplicationHelper

	def logo
		logo = image_tag("browsergame_test_banner.jpg", :alt => "Browsergame Test", :class => "round")   
	end

	def title
		base_title = "Hausaufgabe"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
	def f

  	rute = Rute.last.rute.split('-')
	graph = 0
	x = 0
	f= 0
	

	
	if (graph = Graph.where(:start => rute[x] , :end => rute[x+1] ).empty?)
		f = "Rute nicht berechenbar!"
		graph = 0
	else
	
	  while x < rute.length-1 do
		graph = Graph.where(:start => rute[x] , :end => rute[x+1] )
		f = f + graph.first.length
		x = x +1
      end 
    end
    
	f = f
			
  end
end
