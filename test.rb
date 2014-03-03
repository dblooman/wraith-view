require 'yaml'

files = Dir.glob("configs/*.yaml").sort
files.each do |configs|
   wraith = YAML::load(File.open(configs))
   dir = wraith['directory'] unless wraith['directory'].nil?
   dir.each { |directory| @wraith_dir = directory.gsub('public/', '') }
   gallery = @wraith_dir + '/gallery'
   time_file = "public/' + #{gallery}" unless !File.exist?(gallery)
   time = File.stat(time_file).ctime unless time_file.nil?
 end
