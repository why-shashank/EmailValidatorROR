class AdappController < ApplicationController

	
	def validate
        if Truemail.valid?(params[:q])  #have set default validation to mx in configuration
        	redirect_to adapp_path
        	flash[:notice] = params[:q] + " is Valid"
        else
        	redirect_to adapp_path
        	flash[:alert] = params[:q] + " is Not Valid!!"
        end
		
	end

	def import
		 str =""
		 validstr =""
		 invalidstr =""
		 uploaded_file = params[:file]
		 csv_text = File.read(uploaded_file)
		 csv = CSV.parse(csv_text)
		 csv.each do |row|
		 	row.each do |line|
		 		if Truemail.valid?(line)  #have set default validation to smtp in configuration
        			validstr.concat(line)
        			validstr.concat("<br>")
        		else
        			invalidstr.concat(line)
        			invalidstr.concat("<br>")
        		end
		 	end
		 end
		 str.concat("<font color = 'green'>"+"Valid Email Ids :" +"<br>" + validstr + "</font><font color = 'red'>" + "Invalid Email Ids :" +"<br>" + invalidstr +"</font>")

		 redirect_to adapp_path
		 flash[:alert] = str
		 
         #File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
         #file.write(uploaded_file.read)
 		 #end

		

        
		
	end
end