conf = IO.readlines("ComputingShare.ldif")

for i in (0..(conf.size-1))
        if conf[i] =~ /GLUE2PolicyRule: \n/
                vo = conf[i+1].split.last.strip
                conf[i] =  conf[i].strip + " VO:" + vo + "\n"
        end

end

File.open("ComputingShare.ldif", "w") { |file| file.write conf }
