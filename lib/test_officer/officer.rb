require_relative 'dispatch'

class Officer

  def on_duty
    FSSM.monitor(".") do
      update do |b, r|
          puts "--------------------------------------------------------------------------------------".blue
          puts "Updated file '#{r}' from '#{b}'".blue
          dispatch = Dispatch.new(r, b)
          dispatch.run_test
      end
   
      create do |b, r|
          puts "--------------------------------------------------------------------------------------".green
          puts "Created file '#{r}' from '#{b}'".green
          dispatch = Dispatch.new(r, b)
          dispatch.run_test
      end
   
      delete do |b, r|
          puts "--------------------------------------------------------------------------------------".red
          puts "Removed file '#{r}' from '#{b}'".red
          dispatch = Dispatch.new(r, b)
          dispatch.run_test
      end
    end
  end

end 
