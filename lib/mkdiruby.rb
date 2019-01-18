def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first unless check_if_user_gave_input 
end

def create_folder(name)
  Dir.mkdir(name)
  Dir.chdir(name)
end

def create_gemfile
  file = File.open("Gemfile", "w")
  file.puts("source 'https://rubygems.org'")
  file.puts("ruby '2.5.1'")
  file.puts("gem 'rspec'")
  file.puts("gem 'pry'")
  file.puts("gem 'dotenv'")
  file.puts("gem 'rubocop'")
  file.close
end 

def create_env_gitignore_readme
  file = File.open(".env", "w")
  file = File.open(".gitignore", "w")
  file.puts(".env")
  file = File.open("Readme.md", "w")
  file.puts("This is a ruby program.")
end

def create_lib
	Dir.mkdir("lib")
end

def run_git_bundle_rspec
  system("git init")
  system("bundle install")
  system("rspec --init")
end 


def perform 
  create_folder(get_folder_name)
  create_gemfile
  create_env_gitignore_readme
  create_lib
  run_git_bundle_rspec
end 



perform
