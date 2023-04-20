class LanguageStudent
  attr_reader :languages

  def initialize
    @languages = []
  end

  def add_language(language)
    @languages << language
  end
end

class LanguageTeacher < LanguageStudent

  def teach(student, language)
    if @languages.include?(language)
      student.add_language(language)
      true
    else
      false
    end
  end
end


teacher = LanguageTeacher.new
teacher.add_language('English')
student = LanguageStudent.new
teacher.teach(student, 'English')
print(student.languages)
