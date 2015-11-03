require 'fileutils'

class Konfident
  def self.setup

    hooks_path = ".git/hooks/commit-msg"

    if !File.directory?(".git/")
      error_with_git_repository
    end

    pre_hook = File.open(self.template_file_path).read

    File.open(hooks_path, "w") {
      |file| file.write(pre_hook) 
    }
    
    `chmod +x .git/hooks/commit-msg`

    puts "Commit-msg hook is copied."
  end

  def self.template_file_path
  	templates_root = File.expand_path(File.join('..', 'lib/templates'), File.dirname(__FILE__))
  	File.join(templates_root, 'nukomeet_template.sh')
  end

  def self.error_with_git_repository
    raise "Git Directory not exist. Please use git init command to create new git repository."
  end
end