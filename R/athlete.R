#' Initialize an S4 Athlete Class
#' @exportClass athlete
setClass("athlete",
              slots=list(
                name="character",
                height="numeric",
                weight="numeric",
                age="numeric",
                gender="character"
              ))

#' Set "Show" method for Athlete Class
#' @exportMethod show
setMethod("show",
          "athlete",
          function(object){
            cat("Physical Stats for", object@name, ":\n")
            cat("Height:", object@height, "cm\n")
            cat("Weight:", object@weight, "kg\n")
            cat("Age:", object@age, "\n")
            cat("Gender:", object@gender, "\n")
            cat("=============================\n")
            if (object@gender == "Male") {
              cat("Basal Metabolic Rate:", ((10*object@weight) + (6.25*object@height) - (5*object@age)) + 5, "Calories per day")
              Basal_Metabolic_Rate <<- ((10*object@weight) + (6.25*object@height) - (5*object@age)) + 5
            }
            else {
              cat("Basal Metabolic Rate:", ((10*object@weight) + (6.25*object@height) - (5*object@age)) - 161, "Calories per day")
              Basal_Metabolic_Rate <<- ((10*object@weight) + (6.25*object@height) - (5*object@age)) - 161
            }
          })

