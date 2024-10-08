package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourceController {

	 @GetMapping("/")
	    public String index() {
	        return ("index");
	    }

 @GetMapping("/demo")
 public String demo() {
     return ("demo");
 }
 @GetMapping("/demo1")
 public String demo1() {
     return ("demo1");
 }
 

 @GetMapping("/register")
 public String register() {
     return ("register");
 }
 @GetMapping("/registerA")
 public String registerA() {
     return ("registerA");
 }

 @GetMapping("/forgot-password")
 public String forgot() {
     return ("forgot-password");
 }
 @GetMapping("/Welcome")
 public String Welcome() {
     return ("Welcome");
 }
 @GetMapping("/Welcome1")
 public String Welcome1() {
     return ("Welcome1");
 }
 @GetMapping("/viewcourse")
 public String viewCourse() {
     return "viewcourse";
 }

 @GetMapping("/addcourse")
 public String addCourse() {
     return "addcourse";
 }

 @GetMapping("/deletecourse")
 public String deleteCourse() {
     return "deletecourse";
 }

 @GetMapping("/updatecourse")
 public String updateCourse() {
     return "updatecourse";
 }

 @GetMapping("/grade")
 public String grade() {
     return "grade";
 }

 @GetMapping("/assignment")
 public String assignment() {
     return "assignment";
 }

 @GetMapping("/feedback")
 public String feedback() {
     return "feedback";
 }

 @GetMapping("/contact")
 public String contact() {
     return "contact";
 }

 

}
