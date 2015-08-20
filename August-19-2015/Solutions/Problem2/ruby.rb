=begin

INPUT, OUTPUT
['resume.pdf' , 'pdf'],
['re_sume...pdf' , 'pdf'],
['resu.me.gif' , 'gif'],
['resu342me' , false],
["'r'*26", false]

OPTIONS
1. split the string by . and get the last element if array.length > 1
    -> Con have to create a new element
2. search for the last '.' in the string and extract the file extention

=end

#ANSWER
def getFileExtension(doc)
  data = doc.split('.')
  data.length > 1 ? data.last: false
end

#TEST
questions = [
  ['resume.pdf' , 'pdf'],
  ['re_sume...pdf' , 'pdf'],
  ['resu.me.gif' , 'gif'],
  ['resu342me' , false],
  ["#{'r'*260}.pdf" , 'pdf']
]

questions.each do |q|
  getFileExtension(q[0]) == q[1] ?  (puts 'Correct!'): (puts 'Wrong')
end