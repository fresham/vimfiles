def link(old, new)
  old = File.expand_path(old)
  File.delete(old) if File.exists?(old)
  File.symlink(new, old)
  
  puts "Linked #{old} to #{new}"
end


def delete_lines(file, regex)
  lines = []
  File.open(file, 'r') do |file|
    lines = file.read.split("\n")
  end
  
  contents = lines.reject {|line| line =~ regex}.join("\n")
  
  File.open(file, 'w') do |file|
    file.puts contents
  end
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


desc "Update plugins"
task 'plugin:update' do
  puts `git submodule init`
  puts `git submodule update`
end


desc "Add new plugin"
task 'plugin:add' do
  puts 'Paste HTTP URL of git repo:'
  url = STDIN.gets.chomp
  plugin = url.sub(/https:\/\/github\.com\/.*\/(.*?)\.git$/, '\1')
  
  puts `git reset HEAD`
  puts `git submodule add #{url} bundle/#{plugin}`
  puts `git add .gitmodules bundle`
  puts `git commit -m 'Add #{plugin} plugin.'`
end


desc "Remove plugin"
task 'plugin:remove' do
  puts 'Which plugin would you like to remove?'
  plugin = STDIN.gets.chomp
  gitmodules = '.gitmodules'
  git_config = File.join('.git', 'config')
  
  delete_lines(gitmodules, /^\[submodule "bundle\/#{plugin}"\]$/)
  delete_lines(gitmodules, /^\s+path = bundle\/#{plugin}$/)
  delete_lines(gitmodules, /^\s+url = https:\/\/github\.com\/.*\/#{plugin}\.git$/)
  
  delete_lines(git_config, /^\[submodule "bundle\/#{plugin}"\]$/)
  delete_lines(git_config, /^\s+url = https:\/\/github\.com\/.*\/#{plugin}\.git$/)
  
  puts `rm -rf bundle/#{plugin}`
  
  puts `git reset HEAD`
  puts `git rm --cached bundle/#{plugin}`
  puts `git add .gitmodules bundle`
  puts `git commit -m 'Remove #{plugin} plugin.'`
end


desc "Update locally added help documentation"
task 'doc:update' do
  `find bundle | grep doc$`.split("\n").each do |dir|
    `vim +'helptags #{dir}' +'q!'`
  end
end


desc "Initialize submodules and link up files"
task 'init' do
  Rake::Task['plugin:update'].invoke
  Rake::Task['link:all'].invoke
  Rake::Task['doc:update'].invoke
end
