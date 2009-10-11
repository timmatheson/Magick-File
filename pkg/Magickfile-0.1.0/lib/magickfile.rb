class File
  def info
    file_info = %x{identify #{path}}.split(" ") rescue nil
    file_info = {
      :path => file_info[0],
      :name => file_info[0].split("/").last,
      :format => file_info[1],
      :width => file_info[2].split("x")[0].to_i,
      :height => file_info[2].split("x")[1].to_i,
      :size => file_info[(file_info.size-1)]
    } unless file_info.nil?
    file_info
  end
  
  def self.rotate!(path, deg=90, output = nil)
    output = path if output.nil?
    %x{convert -rotate "#{deg.to_i}" #{path} #{output}}
  end
  
  def method_missing(method)
    if info.keys.include?(method.to_sym)
      self.info[method.to_sym]
    else
      raise Exception, "Undefined Method #{method.to_s}"
    end
  end
end