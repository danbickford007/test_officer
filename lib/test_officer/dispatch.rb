class Dispatch

  def find_test
    begin
      file = File.open(File.join("spec", "officer_spec.rb"))
      p "FOUND"
      print `rspec spec/#{File.basename(file)}`
    rescue
      p 'could not find matching spec, running full specs ...'
      print `rspec spec`
    end
  end

end
