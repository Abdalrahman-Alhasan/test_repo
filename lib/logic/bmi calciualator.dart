// import 'package:flutter/material.dart';
//
//
//
// class HealthCheck {
//   int age=0;
//  double height=0;
//  double weight=0;
//
//   // HealthCheck({required this.age, required this.height, required this.weight});
//
//   double calculateBMI() {
//     return weight / (height * height);
//   }
//
//   String healthStatus() {
//     double bmi = calculateBMI();
//     if (bmi < 18.5) {
//       return "Underweight";
//     } else if (bmi >= 18.5 && bmi < 24.9) {
//       return "Normal weight";
//     } else if (bmi >= 25 && bmi < 29.9) {
//       return "Overweight";
//     } else {
//       return "Obesity";
//     }
//   }
// }

// void main() {
//   HealthCheck user = HealthCheck(age: 25, height: 1.75, weight: 70);
//   print("BMI: ${user.calculateBMI()}");
//   print("Health Status: ${user.healthStatus()}");
// }

class HealthCheck {
    int age=20;
    double height=180;
   double weight=40;
    bool gender=true; // 'male' or 'female'
   // HealthCheck({required this.age, required this.height, required this.weight, required this.gender});

  double calculateBMI() {
    return weight/(height/100 * height/100)  ;
  }

  String healthStatus() {
    double bmi = calculateBMI();
    if (gender == true) {
      if (age < 18) {
        return "Consult a pediatrician for health assessment.";
      } else if (bmi < 18.5) {
        return "Underweight";
      } else if (bmi >= 18.5 && bmi < 24.9) {
        return "Normal weight";
      } else if (bmi >= 25 && bmi < 29.9) {
        return "Overweight";
      } else {
        return "Obesity";
      }
    } else if (gender == false) {
      if (age < 18) {
        return "Consult a pediatrician for health assessment.";
      } else if (bmi < 18.5) {
        return "Underweight";
      } else if (bmi >= 18.5 && bmi < 24.9) {
        return "Normal weight";
      } else if (bmi >= 25 && bmi < 29.9) {
        return "Overweight";
      } else {
        return "Obesity";
      }
    } else {
      return "Invalid gender input.";
    }
  }
}


