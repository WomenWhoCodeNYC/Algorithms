def repeatify(str, count)
    return false unless (str.kind_of?(String) && count.kind_of?(Integer))
    return str*count
end

p repeatify("hello", 3) == "hellohellohello"
p repeatify("hello", "f") == false
p repeatify(4, 3) == false

# submitted by [Iuliia Kotlenko](https://github.com/IuliiaKot)
