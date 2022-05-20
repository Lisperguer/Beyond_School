# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Quiz.destroy_all
Section.destroy_all
Course.destroy_all
User.destroy_all

User.create(email: "felipe.lisperguer@gmail.com", first_name: "Felipe", last_name: "Lisperguer", address: "Siempreviva 123", age: "27", school: "Santa Maria", password: "123456", password_confirmation: "123456")
User.create(email: "flo.lema222@gmail.com", first_name: "Florencia", last_name: "Lema", address: "Calle Falsa 123", age: "58", school: "Santa Catalina", password: "123456", password_confirmation: "123456")

curso0 = Course.create(titulo: "Educacion Sexual", duracion: 10, detalle: "La educación sexual es muy importante, ya que esta proporciona la información y las herramientas necesarias para disfrutar del sexo de manera responsable y saludable")
curso1 = Course.create(titulo: "Educacion Financiera", duracion: 20, detalle: "La educación financiera es el proceso mediante el cual los individuos adquieren una mejor comprensión de los conceptos y productos financieros, desarrollan las habilidades necesarias para tomar decisiones  informadas, evaluar riesgos y oportunidades financieras")
curso2 = Course.create(titulo: "Nutricion", duracion: 15, detalle: "La educación nutricional se refiere a la difusión de información útil acerca de los alimentos y sus nutrientes, pero su función no se reduce a ello, sino también a ofrecer las herramientas necesarias para mejorar los hábitos de alimentación y en consecuencia los procesos de nutrición.")
curso3 = Course.create(titulo: "Introduccion a las nuevas tecnologias", duracion: 35, detalle: "Las 'nuevas tecnologías' son aquellas corrientes tecnológicas que están marcando un cambio en el modelo industrial y social en la economía global. En otras palabras, consiste en un conjunto de tecnologías de temprana creación o desarrollo que forman parte de la denominada 'revolución digital'.")
curso4 = Course.create(titulo: "Matematica", duracion: 50, detalle: "La mayoría de las personas pensamos que las matemáticas sólo se tratan de números para realizar operaciones como sumas, restas, multiplicaciones, fracciones, etc. Sin embargo, sus funciones están directamente relacionadas con nuestras actividades diarias.")

url0 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1652999187/development/sexualidad_qdiutd.jpg"
curso0.photo.attach(io: URI.open(url0), filename: "sexualidad_qdiutd.jpg", content_type: "image/jpeg")
curso0.save

url1 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1652999186/development/Educacion-financiera_a6w6bg.jpg"
curso1.photo.attach(io: URI.open(url1), filename: "Educacion-financiera_a6w6bg.jpg", content_type: "image/jpeg")
curso1.save
url2 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1653005367/development/nutricion_kxxb2m.jpg"
curso2.photo.attach(io: URI.open(url2), filename: "nutricion_kxxb2m.jpg", content_type: "image/jpeg")
curso2.save
url3 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1652999187/development/tecnologias_bvvdlr.webp"
curso3.photo.attach(io: URI.open(url3), filename: "tecnologias_bvvdlr.webp", content_type: "image/jpeg")
curso3.save
url4 = "https://res.cloudinary.com/dydeg1evr/image/upload/v1652999186/development/mathematics_ovoibd.jpg"
curso4.photo.attach(io: URI.open(url4), filename: "mathematics_ovoibd.jpg", content_type: "image/jpeg")
curso4.save

url_section_1 = URI.open("https://www.youtube.com/watch?v=F6rruydac9I")
url_section_2 = URI.open("https://www.youtube.com/watch?v=ALlSherR2ss")

section_1 = Section.create(nombre: "Modulo 1", descripcion: "Educación Financiera: 'La Inversión'", url_cloudinary: url_section_1, course: curso1)
section_2 = Section.create(nombre: "Modulo 2", descripcion: "Educación Financiera: 'Calidad de Vida y Educación Financiera'", url_cloudinary: url_section_2, course: curso1)

# section_1.video.attach(io: URI.open(url_section_1), filename: 'raymeVideo.mp4', content_type: 'video/mp4'))
# section_1.save

# Modulo 1
quiz_1 = Quiz.create(nombre: "Quiz Modulo 1", section: section_1, preguntas:"¿Qué es una inversión?; ¿Qué hay que tener en cuenta la hora de invertir?; ¿Cuál es la primera mejor inversión?", respuestas: "Destinar una parte del ingreso con el propósito de aumentar el monto inicial, Destinar todo mi salario a un proyecto nuevo, Endeudarme para aumentar mi monto inicial a futuro; Rendimiento - Riesgo - Plazo,  Rendimiento - Recaudación - Plazo, Recaudación - Plazo - Riesgo; Inmuebles, Acciones, El estudio")
# Modulo 2
quiz_2 = Quiz.create(nombre: "Quiz Modulo 2", section: section_2, preguntas:"¿Qué no hay que sobrepasar para tener una buena calidad de vida?; ¿Qué implica ser un consumidor responsable?; ¿Cuál de estas opciones NO esta relacionada con ?", respuestas: "El nivel de endeudamiento, El salario, La hipoteca; Estudiar el mercado antes de consumir, Consumir y después analizar, Consumir todos mis ingresos; Optimizar el presupuesto, Analizar la información de los productos o servicios, Comprar lo que me dicen las pautas publicitarias")
>>>>>>> master
