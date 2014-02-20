class Dispatch

  SPEC_FILE = /\_{1}s{1}p{1}e{1}c{1}.+/

  attr_accessor :list

  def initialize(file, path)
    @file = file.to_s
    @path = path.to_s
  end

  def run_test
    begin
      found = false
      @list = Dir.glob("**/*").each{|f| found = true if f.to_s == @file and @file =~ SPEC_FILE}
      if found
        run @file, "running #{@file}"
      else
        if found = alternative_file(@file)
          run found, "alternative find, running"
        else
          run 'spec', 'could not find file, running full suite ... '
        end
      end
    rescue => e
      run 'spec', "could not find file due to errors, running full suite ... ERROR: #{e}"
    end
  end

  def alternative_file file
    file = file.split("/").last.split(".")[0]
    file = "#{file}_spec.rb"
    found = false
    @list.each{|f| found = f if f.include? file}
    found
  end

  private

  def run file, message
    puts "#{message} #{file} ... ".yellow
    print `rspec #{file}` 
  end

end
