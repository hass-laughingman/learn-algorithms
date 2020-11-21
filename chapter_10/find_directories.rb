def find_directories(directory)
  # inspect each file within the directory. some of these 'files' may
  # actually be subdirectories
  Dir.foreach(directory) do |filename|

    # if the current file is itself a subdirectory
    if File.directory?("#{directory}/#{filename}") &&
        filename != "." && filename != ".."

      # print out the full path name
      puts "#{directory}/#{filename}"

      # loop through second-level subdirectory
      Dir.foreach("#{directory}/#{filename}") do |inner_filename|
        if File.directory?("#{directory}/#{filename}/#{inner_filename}") &&
            filename != "." && filename != ".."
            puts "#{directory}/#{filename}/#{inner_filename}"
        end
      end
    end
  end
end
