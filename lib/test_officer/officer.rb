class Officer

  def on_duty
    FSSM.monitor(".") do
      update do |b, r|
          puts "File '#{r}' from '#{b}'"
          p `rspec spec`
      end
   
      create do |b, r|
          puts "File '#{r}' from '#{b}'"
          p `rspec spec`
      end
   
      delete do |b, r|
          puts "File '#{r}' from '#{b}'"
          p `rspec spec`
      end
    end
  end

end 
