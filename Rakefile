desc "Update Pathogen to latest version"
task :update_pathogen do
  require 'open-uri'
  file = File.join('autoload', 'pathogen.vim')
  url = 'https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim'
  
  output = open(file, 'wb')
  output.write(open(url).read)
  output.close
  
  puts "Updated Pathogen at #{file} with the file at #{url}"
end
