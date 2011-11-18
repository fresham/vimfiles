def link(old, new)
  old = File.expand_path(old)
  File.delete(old) if File.exists?(old)
  File.symlink(new, old)
  
  puts "Linked #{old} to #{new}"
end


desc "Update Pathogen to latest version"
task 'update_pathogen' do
  require 'open-uri'
  file = File.join('autoload', 'pathogen.vim')
  url = 'https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim'
  
  output = open(file, 'wb')
  output.write(open(url).read)
  output.close
  
  puts "Updated Pathogen at #{file} with the file at #{url}"
end


desc "Link .vimrc file"
task 'link:vimrc' do
  old = File.join('~', '.vimrc')
  new = File.join(Dir.getwd, 'vimrc')
  
  link(old, new)
end


desc "Link .gvimrc file"
task 'link:gvimrc' do
  old = File.join('~', '.gvimrc')
  new = File.join(Dir.getwd, 'gvimrc')
  
  link(old, new)
end


desc "Link .vim directory"
task 'link:vim' do
  old = File.join('~', '.vim')
  new = Dir.getwd
  
  link(old, new)
end


desc "Link all vim resources"
task 'link:all' do
  Rake::Task['link:vimrc'].invoke
  Rake::Task['link:gvimrc'].invoke
  Rake::Task['link:vim'].invoke
end
