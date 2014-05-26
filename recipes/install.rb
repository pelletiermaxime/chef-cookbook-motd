# encoding: UTF-8
# Install all the files in the motd directory
# Taken from
# http://serverfault.com/questions/522671/how-to-use-current-cookbook-template-dir-to-copy-all-templates-recursively-in-a
# Get the Chef::CookbookVersion for this cookbook
cb = run_context.cookbook_collection[cookbook_name]

# Loop over the array of files
cb.manifest['files'].each do |cbf|
  filename = cbf['name']

  cookbook_file "/etc/update-motd.d/#{filename}" do
    source filename
    mode 0755
    owner 'root'
    group 'root'
  end
end
