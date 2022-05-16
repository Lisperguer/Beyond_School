# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Course.destroy_all
Section.destroy_all
Quiz.destroy_all

feli = User.create(email: "felipe.lisperguer@gmail.com", first_name: "Felipe", last_name: "Lisperguer", address: "Siempreviva 123", edad: "27", colegio: "Santa Maria", password: "123456", password_confirmation: "123456")
flor = User.create(email: "flo.lema222@gmail.com", first_name: "Florencia", last_name: "Lema", address: "Calle Falsa 123", edad: "58", colegio: "Santa Catalina", password: "123456", password_confirmation: "123456")

course_1 = Course.create!(titulo: "Educacion Sexual", duracion: 10, detalle: "La educación sexual es muy importante, ya que esta proporciona la información y las herramientas necesarias para disfrutar del sexo de manera responsable y saludable")
course_2 = Course.create!(titulo: "Educacion Financiera", duracion: 20, detalle: "La educación financiera es el proceso mediante el cual los individuos adquieren una mejor comprensión de los conceptos y productos financieros, desarrollan las habilidades necesarias para tomar decisiones  informadas, evaluar riesgos y oportunidades financieras")
course_3 = Course.create!(titulo: "Nutricion", duracion: 15, detalle: "La educación nutricional se refiere a la difusión de información útil acerca de los alimentos y sus nutrientes, pero su función no se reduce a ello, sino también a ofrecer las herramientas necesarias para mejorar los hábitos de alimentación y en consecuencia los procesos de nutrición.")
course_4 = Course.create!(titulo: "Introduccion a las nuevas tecnologias", duracion: 35, detalle: "Las 'nuevas tecnologías' son aquellas corrientes tecnológicas que están marcando un cambio en el modelo industrial y social en la economía global. En otras palabras, consiste en un conjunto de tecnologías de temprana creación o desarrollo que forman parte de la denominada 'revolución digital'.")
course_5 = Course.create!(titulo: "Matematica", duracion: 50, detalle: "La mayoría de las personas pensamos que las matemáticas sólo se tratan de números para realizar operaciones como sumas, restas, multiplicaciones, fracciones, etc. Sin embargo, sus funciones están directamente relacionadas con nuestras actividades diarias.")

course_1.save
course_2.save
course_3.save
course_4.save
course_5.save

url_section_1 = "https://www.youtube.com/watch?v=F6rruydac9I"
url_section_2 = "https://www.youtube.com/watch?v=ALlSherR2ss"

section_1 = Section.create!(name: "Modulo 1", description: "Educación Financiera: 'La Inversión'", url_video: url_section_1, course_id: 2)
section_2 = Section.create!(name: "Modulo 2", description: "Educación Financiera: 'Calidad de Vida y Educación Financiera'", url_video: url_section_2, course_id: 2)

section_1.save
section_2.save

quiz_1 = Quiz.create!(name: "Quiz Modulo 1", section_id: 1 )
quiz_2 = Quiz.create!(name: "Quiz Modulo 2", section_id: 2 )

quiz_1.save
quiz_2.save

quiz_details_1 = Quiz_details.create!(quiz_id: 1, pregunta: "Ahorrar en pesos es considerada una inversion?", respuesta: false)
quiz_details_2 = Quiz_details.create!(quiz_id: 1, pregunta: "Ahorrar en pesos es considerada una inversion?", respuesta: false)
quiz_details_3 = Quiz_details.create!(quiz_id: 1, pregunta: "Ahorrar en pesos es considerada una inversion?", respuesta: false)
quiz_details_end = Quiz_details.create!(quiz_id: 2, pregunta: "Ponele FALSO", respuesta: false)

quiz_details_1.save
quiz_details_2.save
quiz_details_3.save
quiz_details_end.save
