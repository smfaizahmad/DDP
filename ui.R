library(shiny) 
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body Mass Index (BMI) Calculator as per WHO standards"),
                
                sidebarPanel(
                        numericInput('weight', ' Please input your weight in kilograms', 60) ,
                        numericInput('height', ' Please input your height in metres', 1.50, min = 0.1, max = 2, step = 0.01),
                        submitButton('Submit')
                ), 
                mainPanel(
                        p(' The body mass index (BMI), or Quetelet index, is a measure of relative size based on the mass and height of an individual.'),
p(' The body mass index (BMI), or Quetelet index, is a measure of relative size based on the mass and height of an individual. There are a wide variety of contexts where the BMI of an individual can be used as a simple method to assess how much the recorded body weight departs from what is healthy or desirable for a person of that height. BMI ranges from underweight to obese and is commonly employed among children and adults to predict health outcomes. The BMI trait is influenced by both genetic and non-genetic factors, and it provides a paradigm to understand and estimate the risk factors for health problems.'),


                        p(' As per World Health Organization (WHO) BMI is classified as follows:'),
                        tags$div(
                                tags$ul(
                                        tags$li('BMI <18.5       : Underweight'),
                                        tags$li('BMI [18.5-24.9] : Normal weight'),
                                        tags$li('BMI [25-29.9]   : Overweight'),
                                        tags$li('BMI >=30        : Obesity')
                                )
                        ),
                     
                        h4('As per the values submitted by you:'), 
                        p('weight:'), verbatimTextOutput("inputweightvalue"),
                        p('height:'), verbatimTextOutput("inputheightvalue"),
                        h4('Your BMI is:'),
                        verbatimTextOutput("estimation"),
                        p('This BMI value is a strong indicator that you are :'),strong(verbatimTextOutput("diagnostic"))
                )
                
        )   
)
