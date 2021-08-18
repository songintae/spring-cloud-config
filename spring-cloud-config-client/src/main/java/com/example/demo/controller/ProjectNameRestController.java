package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RefreshScope
@RestController
public class ProjectNameRestController {
    private final String projectName;

    @Autowired
    public ProjectNameRestController(@Value("${project.name}") String projectName) {
        this.projectName = projectName;
    }

    @GetMapping("/project-name")
    public String getProjectName() {
        return this.projectName;
    }
}
