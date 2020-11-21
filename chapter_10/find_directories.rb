def find_directories(directory)
  # inspect each file within the directory. some of these 'files' may
  # actually be subdirectories
  Dir.foreach(directory) do |filename|

    # if the current file is itself a subdirectory
    if File.directory?("#{directory}/#{filename}") &&
        filename != "." && filename != ".."

      # print out the full path name
      puts "#{directory}/#{filename}"
    end
  end
end
