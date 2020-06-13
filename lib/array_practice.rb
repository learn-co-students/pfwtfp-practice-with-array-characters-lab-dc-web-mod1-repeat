def sentence_to_array(string)
    string.split(/ /)
end

def clean_up_elements(array)
    array.compact.reject { |x| x == '' }.map(&:strip)
end

def array_to_sentence(array)
    array.map { |i| "#{i}"}.join(" ")
end

def capitalize_all_elements(array)
    array.map { |i| i.capitalize }
end

def substitute_strings(array, pattern, replacement)
    array.map { |i| i.sub(pattern, replacement)}
end

def title_format(array)
    # array.split.map(&:capitalize).join(' ').split('-').map(&:titleize).join('-')
    array.map(&:split).map{|x| x.map.with_index {|y, i| ['the', 'a', 'of'].include?(y) && i != 0 ? y : y.capitalize }}.map{|x| x.join(' ')}
end
